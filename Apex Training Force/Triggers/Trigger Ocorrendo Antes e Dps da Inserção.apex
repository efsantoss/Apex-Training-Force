//File --> New --> Apex Trigger

trigger triggerInsereConta on Account (after insert) {
    DateTime momentoDoDisparo /*qdo o trigger sera lançado*/ = System.now();
    System.debug('Momento de execucao do Trigger: ' + momentoDoDisparo.getTime());

}
//Anonymous Window
Account a = new Account(Name='Test TYrigger');
try{
    DateTime momentoInsercao =  System.now();
    insert a;

    System.debug('Momento da insercao: ' + momentoInsercao.getTime());
}catch(DMLException d){
    System.debug(d.getMessage());
}