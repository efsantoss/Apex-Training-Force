Lista<Account> lista = [SELECT Name, phone, website FROM Accounts WHERE Name LIKE 'Acme%'];
for(Account a:lista) {
    System.debug(a);
}

//merge
Account master = [SELECT Name FROM Accounts WHERE id = 'xx23323xxx342'];
Account slave = [SELECT Name FROM Account WHERE id = 'xxx000xx0x00x00'];
try{
    merge master slave;
} catch(DmlException d){
    System.debug(d.getMessage());
}