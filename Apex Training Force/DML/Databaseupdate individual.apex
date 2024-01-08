List<Account> conta = [SELECT Name FROM Account WHERE Name LIKE 'Edge%'];
conta.website = 'https://edgedobrasil.com.br';
try{
    Database.SaveResult res = Database.update(conta, true);
    System.debug(res);
}catch(DMLException d){
    System.debug('excecao: ' + d.getMessage());
}
System.debug(conta);
