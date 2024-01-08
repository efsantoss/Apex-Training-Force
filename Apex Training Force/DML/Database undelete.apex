Account a = new Account(Name='Universal Containers');
insert(a);
insert(new Contact(LastName='Carter',AccountId=a.Id));
delete a;

Account[] savedAccts = [SELECT Id, Name FROM Account WHERE Name = 'Universal Containers' ALL ROWS]; 
try {
    undelete savedAccts;
} catch (DmlException e) {
    // Process exception here
}