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