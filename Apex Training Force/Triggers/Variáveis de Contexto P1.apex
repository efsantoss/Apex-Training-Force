//funcoes que retornam valor booleano qdo da certo as condicoes

public class EnvioDeEmail {
    public static void sendMail(String adress, String subject, String body){
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        String[] toaddress = new String[]{Address};
        email.setToAddress(toaddress);
        email.saveAsActivity = false;
        email.setSubject(subject);
        email.setPlainTextBody(body);

        Messaging.SendEmailResult[] results = Messaging.sendEmail(
            new Messaging.SingleEmailMessage[] {email});
        inspecResults(results);
    
    }
    private static Boolean inspecResults(Messaging.SendEmailResult[] results) {
        Boolean sendResult = true;
        for(Messaging.SendEmailResult res: results){
            if(res.isSuccess()){
                System.debug('Email enviado com sucesso');
            }else{
                sendResult = false;
                System.debug('Os seguintes erros ocorreram: '+ res.getErrors());
            }
        }
        return sendResult;
    }
}