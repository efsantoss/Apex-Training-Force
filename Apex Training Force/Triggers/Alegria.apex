trigger ValidarCorCarro on Carro__c (before insert, before update) {
    for (Carro__c carro : Trigger.new) {
        // Verifica se a cor do carro não é 'preta'
        if (!'preta'.equalsIgnoreCase(carro.Cor__c)) {
            carro.addError('A cor do carro deve ser preta.'); // Adiciona mensagem de erro
        }else{
            System.debug('Boa')
        }
    }
}
