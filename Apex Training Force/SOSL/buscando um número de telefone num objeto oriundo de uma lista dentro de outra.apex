List<List<SObject>> listaProcura = [FIND 'Acme' IN ALL FIELDS RETURNING
    Account(Name),Contact(FirstName) LIMIT 5];
System.debug(listaProcura[0] [0]);

    for(List<SObject> lista: listao){
        for(SObject obj: lista){
            System.debug(obj);
            Map<String,Object> ListaDeCampos = obj.getPopulatedFieldsAsMap();
            For(String campo: ListaDeCampos.keySet()){
                //System.debug(' Campo: ' + campo + ' Valor: ' + ListaDeCampos.get(chave));
                if(ListaDeCampos.get(chave) == 'United Oil & Gas Corp.'){
                    System.debug(ListaDeCampos.get('phone'));
                }
            }
        }
    }

    //for(SObject obj: listaProcura[0]){
      //  System.debug(obj);
   // }
