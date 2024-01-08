

//Anonymous

Integer nota = 5;
switch on nota{
    when 0 {
        System.debug('Nota zero, desqualificado. ');
    }
    when 1,2,3,4 {
        System.debug('recuperação');
    }
    when 5,6,7,8,9 {
        System.debug('Aprovado');
    }
    when else {
        System.debug('TU EH O CARA');
    }
}