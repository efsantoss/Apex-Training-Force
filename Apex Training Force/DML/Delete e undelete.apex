Lista<Account> lista = [SELECT Name, phone FROM Accounts WHERE Name LIKE 'Acme%'];
for(Account a:lista) {
    System.debug(a);
}
//delete
Account conta = [SELECT Name, phone FROM Accounts WHERE id = 'xxx00x0x0x00'];
System.debug(conta);

try{
    delete conta;
}catch(DmlException d){
    System.debug(d.getMessage());
}

//undelete
Account [] registrosExcluidos = [SELECT Id FROM Account WHERE 
                                Name LIKE 'Acme%' ALL ROWS];
try{
    undelete registrosExcluidos;
}catch(DmlException d){
    System.debug(d.getMessage());
}