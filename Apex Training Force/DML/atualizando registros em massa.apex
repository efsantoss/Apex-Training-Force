List<Contact> lista = [SELECT Firstname, Department FROM Contact WHERE Department = 'TI'];
for(Contact c: lista) {
    System.debug(c);
}
List<Contact> listaUpdate = new List<Contact>();
for(Contact con: lista){
    if(con.Department == 'TI'){
        con.Department = 'IT';
        listaUpdate.add(con);
    }
}
try{
    update listaUpdate;
} catch(DmlException d){
    System.debug(d.getMessage());
}