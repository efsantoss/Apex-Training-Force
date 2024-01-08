
List<Id> toDeleteIds = new List<Id>(accountIdToExistingAccountsMap.keySet());
Database.DeleteResult[] deleteResults = Database.delete(toDeleteIds, true);
for(Database.DeleteResult dr : deleteResults) {                   
    if (!dr.isSuccess()) {
        for(Database.Error err : dr.getErrors()) {
            System.debug(LoggingLevel.Error, 'The following error has occurred.'
                + '\n' + err.getStatusCode() + ': ' + err.getMessage()
                + '\n fields that affected this error: ' + err.getFields());
            // Plus further error handling as required
        }
    }
}