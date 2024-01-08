String fruta = 'banana';
String resultado = '';
switch on fruta{
    when 'banana', 'abacate' {
        if(fruta == 'banana') {
            resultado = 'banana';
        } else {
            resultado = 'abacate';
        }
        //resultado = 'Esta no bloco 1 do codigo';
    }
    when 'abacaxi', 'melao' {
        if(fruta == 'abacaxi') {
            resultado = 'abacaxi';
        }else {
            resultado = 'melao';
        }
        //resultado = ' esta no bloco 2 do codigo';
    }
}
System.debug(resultado);