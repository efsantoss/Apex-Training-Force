//Anonymous
Account conta = new Account(Name ='Petrobras');
insert conta;
System.debug(conta.Id);
List<Opportunity> op = new List<Opportunity>();
op = [SELECT Name, StageName, Closedate, AccountID FROM Opportunity WHERE AccountId
    = :conta.Id];
    System.debug('Lista das oportunidades atreladas á conta recem atualizada ou ' +
                'inserida');
for(Opportunity opport: op){
    System.debug(opport);
}