//File --> New --> Apex Trigger

trigger triggerInsereConta on Account (before insert, after insert) {
    System.debug('Trigger acionado: ');

}

//Anonymous Window
Account a = new Account(Name='Test TYrigger');
try{
    System.debug('Inserido');
    insert a;

}catch(DMLException d){
    System.debug(d.getMessage());
}