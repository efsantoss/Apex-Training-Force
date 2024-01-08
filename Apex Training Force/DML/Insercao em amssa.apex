List<Contact> conList = new List<Contact>{
    new Contact (Firstname = 'Joao', LastName = 'Smith', Department = 'TI'),
    new Contact (Firstname = 'Pedro', LastName = 'da Cunha', Department = 'TI'),
    new Contact (Firstname = 'Nero', LastName = 'dos Santos', Department = 'TI');
}
try{
    insert conList;
}catch(DmlException d) {
    System.debug(d);
}


List<Contact> conList = [SELECT Firstname, Lastname FROM Contact WHERE Department = 'TI'];
for(Contact c: conList){
    System.debug(c);
}