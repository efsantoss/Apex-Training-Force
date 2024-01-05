//Anonymous
Map<Id, Account> acctsWithOpps = new Map<Id, Account>(
[SELECT Id, Name, (SELECT Id FROM Opportunities) FROM Account]);
List<Opportunity> oportunidadesDaConta = new List<Opportunity>();
Integer contador = 0;
Account primeiraContaSemOportunidade;

for(Id i: acctsWithOpps.keySet()){
    //System.debug('Id de conta: ' + i);
    //System.debug('Nome da conta: ' + acctsWithOpps.get(i).Name);
    oportunidadesDaConta = (acctsWithOpps.get(i).Opportunities);
    if(oportunidadesDaConta.size()>0){
        //System.debug('Qtde de oportunidades para essa conta: ' + oportunidadesDaConta.size());
    }else {
        contador++;
        if (contador == 1){
            primeiraContaSemOportunidade =  acctsWithOpps.get(i);
            System.debug('Id: ' + primeiraContaSemOportunidade.Id + 
            'e nome da primeira conta sem oportunidade: ' + primeiraContaSemOportunidade.Name);
        }
        //System.debug('Essa conta nao possui oportunidades relacionadas');
    }
    System.debug('primeira conta sem oportunidade: ' + primeiraContaSemOportunidade.Name);
}