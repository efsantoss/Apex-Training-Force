trigger InsereContaCheckbox on Account (before insert, before update) {
    for (Account a: Trigger.new) {
        if (a.Match_Billing_Address__c == true){
            a.ShippingPostalCode = a.BillingPostalCode;
        }
    }
}

//Anonymous
//String nomeDaConta = 'Teste de cep 18';
String nomeDaConta = 'Teste de cep 19';
Account a = new Account(Name = nomeDaConta, BillingPostalCode = '18',
                        Match_Billing_Address__c = true);//false = o campo fica vazio pois n ha atribuição
insert a;

Account b = [SELECT Name, BillingPostalCode, ShippingPostalCode FROM Account Where Name = nomeDaConta];
System.debug('INFOS : ' + b.Name + ' - ' + b.BillingPostalCode + ' - ' + b.ShippingPostalCode);