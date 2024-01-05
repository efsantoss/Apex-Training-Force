List<List<SObject>> listaProcura = [FIND 'Acme' IN ALL FIELDS RETURNING
    Account(Name),Contact(FirstName)];

System.debug(listaProcura);