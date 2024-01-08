//database insert objeto
Account ghy = new Account (Name = 'ghy');
try{
    Database.SaveResult resultado = Database.insert(ghy, true);
    // se for false ele cai no isSucces | True cai no catch
    System.debug(resultado.isSuccess()?'Registro inserido com sucesso' : 'Info Nao Registrada');
}catch (DmlException d){
    System.debug(d.getMessage());
}


//database insert lista
List<Account> al = new List<Account>();
al.add(new Account(Name = 'loja1'));
al.add(new Account(Name = 'loja1'));

Database.SaveResult[] srlist = Database.insert(al, false);
for(Database.SaveResult sr: srlist){
    if(sr.isSuccess()){
        System.debug('Inserido com sucesso - ' + sr.getId());
    }else {
        for(Database.Error err : sr.getErrors()){
            System.debug('Erros ocorreram');
            System.debug(err.getStatusCode() + ':' + err.getMessage());
            System.debug('Campos que foram afetados: ' + err.getFields());
        }
    }
}