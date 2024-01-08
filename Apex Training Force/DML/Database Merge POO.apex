//Parte 1
public class Merging {
    public void visualizaObjetos(String inicioNome){
        List<Account> contas = [SELECT Name, Phone, (SELECT Id, Name, Firstname, AccountId FROM Contacts)    
                        FROM Account WHERE Name LIKE :inicioNome + 'Acm%'];
        for(Account a: contas){  
            System.debug(a);
            List<Contact> cont = a.Contacts;
            for(Contact c: cont){
                System.debug('Contato: ' + c);
            }
        }
    }
}
//Parte 2
public Account retornaContaMaster(Integer indiceContaMaster, String inicioNome){
    Account contaMaster = [SELECT Name, Phone FROM Account WHERE Name LIKE : inicioNome + '%'];
    Account master;
    for(Account a:conts){
        master = contas[indiceContaMaster];
    }
    return master;
}

//Parte 3
public List<Account> selecionaObjetosParaMerge(String inicioNome, String phoneNull, String finalPhone){
    List<Account> contasMerged = [SELECT Name, Phone, (SELECT Id, Name, FirstName, AccountID FROM Contacts)
                                FROM Account WHERE Name LIKE :(inicioNome + '%') AND (Phone =:phoneNull
                                OR Phone LIKE :'%' + finalPhone) LIMIT 2];
    return contasMerged;
}

//Parte 4
public void fazMerge(Account master, List<Account> listaMerged){
    Database.MergeResult[] mr = Database.merge(master, listaMerged);
    for(Database.MergeResult mrr: mr){
        if(mrr.isSuccess()){
            System.debug('contas mescladas cm sucesso');
        }
    }
} 