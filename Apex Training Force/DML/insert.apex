try{
Account acct = new Account(Name = 'Acme', Phone = '(19) 99884598', NumberOfEmployees = 100);
acct.billingcity = 'Campinas';
acct.billingcountry = 'Brazil';
acct.website = 'www.acmeindustrial.com';
insert acct;
System.debug('Id do objeto inserido: ' + acct.Id);
}catch (Exception e){
    System.debug('Mensagem: ' + e.getMessage());
}

