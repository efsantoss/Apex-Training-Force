// Parte 1
List<Account> contas = [SELECT Name, (SELECT id, Name, Firstname, AccountID FROM Contacts) FROM Account WHERE Name LIKE 'Acm%'];
for(Account a:contas){
    System.debug(a);
    master = contas [1];
    merged = contas [0];
    List<Contact> cont = a.Contacts;
    for(Contact c: cont) {
        System.debug('Contato: ' + c);
    }
}

//Parte 2

Savepoint sp = Database.setSavepoint();
Database.MergeResult mr = Database.merge(master, merged);
    if(mr.isSuccess()){
        System.debug('Contas mescladas com sucesso');
    }
contas []

//Parte 3