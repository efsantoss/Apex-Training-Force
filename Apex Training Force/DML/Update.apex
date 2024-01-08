try{
Account acc = [SELECT website FROM Account WHERE id = 'numerodoid'];
if (acc.website != null){
    acc.website = 'acmedobrasil.com.br';
    }
    update acc;
}catch(Exception e){
    System.debug(e);
}
