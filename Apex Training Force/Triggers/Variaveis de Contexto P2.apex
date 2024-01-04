//File --> New --> Apex Trigger

trigger TriggerExemplo on Account (after insert, after delete) {
    Integer contaRegistros=0;
    if(Trigger.isInsert){
        contaRegistros = Trigger.old.size();//old pq sao os registros que ja foram inseridos
        EnvioDeEmail.sendMail(' enzo.santos@sottelli.com ', ' Insercaod e conta realizada ', 
                            contaRegistros + ' conta(s) foram inseridos ');
    }else if(Trigger.isDelete){
        contaRegistros = Trigger.old.size();//old novamente... eh anterior a uma alteração se for posterior eh new
        EnvioDeEmail.sendMail(' enzo.santos@sottelli.com ', ' Exclusao de conta ',
                            contaRegistros + ' conta(s) foram excluidos ');
    }
}