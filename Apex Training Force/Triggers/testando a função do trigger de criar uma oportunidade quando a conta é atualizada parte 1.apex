trigger AddRelatedRecord on Account (after insert , after update) {
List<Opportunity> oppList = new List<Opportunity>();
    Map<Id, Account> acctsWithOpps = new Map<Id, Account>(
        [SELECT Id, (SELECT Id FROM Opportunities) FROM Account WHERE
        Id IN:Trigger.New]);
        System.debug(acctsWithOpps);
        for (Account a:Trigger.new){
            Integer numeroDeOportunidades = acctsWithOpps.get(a.Id).Opportunities.size();
            System.debug('Numero de Oportunidades: ' + numeroDeOportunidades);
            if(numeroDeOportunidades == 0){
                oppList.add(new Opportunity(Name = a.Name +' Opportunity',
                StageName = 'Prospecting', CloseDate = System.today().
                                            addMonths(1), AccountId = a.Id));
            }
        }
        if(oppList.size() > 0){
            insert oppList;
        }

}

//Anonymous
Map<Id, Account> acctsWithOpps = new Map<Id, Account>(
[SELECT Id, Name, (SELECT Id FROM Opportunities) FROM Account]);
List<Opportunity> oportunidadesDaConta = new List<Opportunity>();
for(Id i: acctsWithOpps.keySet()){
    System.debug('Id de conta: ' + i);
    System.debug('Nome da conta: ' + acctsWithOpps.get(i).Name);
    oportunidadesDaConta = (acctsWithOpps.get(i).Opportunities);
    if(oportunidadesDaConta.size()>0){
        System.debug('Qtde de oportunidades para essa conta: ' + oportunidadesDaConta.size());
    }else {
        System.debug('Essa conta nao possui oportunidades relacionadas');
    }
}