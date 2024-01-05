//Salvar os codigos da P1 e P2

//ANONYMOUS
List<Account> contas =[SELECT Id, Name, Phone FROM Account Where Name LIKE
                      'Acme%' AND phone = null LIMIT 2];

System.debug(contas);

Database.DeleteResult[] dr = Database.delete(contas, false);
for (Database.DeleteResult r: dr){
    if(r.isSuccess()){
        System.debug('Registro ' + r.Id + ' Excluido com sucesso');
    }
}


