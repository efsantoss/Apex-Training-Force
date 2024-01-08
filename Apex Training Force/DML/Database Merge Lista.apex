//Parte 1
List<Account> contas = [SELECT Name, Phone, (SELECT Id, Name, Firstname, AccountId FROM Contacts)    
                        FROM Account WHERE Name LIKE 'Acm%'];
Account master;
System.debug('lISTAS DE CONTAS ANTES DO MERGE');
for(Account a: contas){  
    System.debug(a);
    master = contas [1];
    List<Contact> cont = a.Contacts;
    for(Contact c: cont){
        System.debug('Contato: ' + c);
    }
}

//Parte 2
List<Account> contas = [SELECT Name, Phone, (SELECT Id, Name, Firstname, AccountId FROM Contacts)    
                        FROM Account WHERE Name LIKE 'Acm%' AND (Phone=null OR Phone LIKE '%5124') LIMIT 2];
for( Account a: contasMerged){
    System.debug(a);
    List<Contact> cont = a.Contacts;
    for(Contact c: cont){
        System.debug('Contato: ' + c);
    }
}

//Parte 3

Savepoint sp = Database.setSavepoint();
Database.MergeResult[] mr = Database.merge(master, contasMerged);
for(Database.MergeResult mrr: mr){
    if(mrr.isSuccess()){
        System.debug('contas mescladas com sucesso');
    }
}
Database.rollback(sp);

