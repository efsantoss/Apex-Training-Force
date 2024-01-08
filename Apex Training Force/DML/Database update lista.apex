Account[] accts = new List<Account>();
for(Integer i=0;i<3;i++) {
    Account a = new Account(Name='Acme' + i, 
                            BillingCity='San Francisco');
    accts.add(a);
}
Account accountToUpdate;
try {
    insert accts;        
    
    // Update account Acme2.
    accountToUpdate = 
        [SELECT BillingCity FROM Account 
         WHERE Name='Acme2' AND BillingCity='San Francisco'
         LIMIT 1];
    // Update the billing city.
    accountToUpdate.BillingCity = 'New York';
    // Make the update call.
    update accountToUpdate;
} catch(DmlException e) {
    System.debug('An unexpected error has occurred: ' + e.getMessage());
}

// Verify that the billing city was updated to New York.
Account afterUpdate = 
    [SELECT BillingCity FROM Account WHERE Id=:accountToUpdate.Id];
System.assertEquals('New York', afterUpdate.BillingCity);