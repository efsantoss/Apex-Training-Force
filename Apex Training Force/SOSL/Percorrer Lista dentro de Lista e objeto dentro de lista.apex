List<List<SObject>> listaProcura = [FIND 'Acme' IN ALL FIELDS RETURNING
    Account(Name),Contact(FirstName)];
for(List<SObject> listas: listaProcura){
    System.debug(listas);
    for(SObject objs: listas){
        System.debug(objs);
    }
}
System.debug(listaProcura);