//Anonymous
String variavel = null;
    switch on variavel{
        when 'oi' {
            System.debug('Olá');
        }
        when 'ola'{
            System.debug('oi');
        }
        when null {
            System.debug(' a variavel eh nula');
        }
    }

enum Estacao{PRIMAVERA, VERAO, OUTONO, INVERNO}
Estacao season = Estacao.PRIMAVERA;
String resultado;
switch on season{
    when VERAO{
        resultado = 'CALOOOOORRRR';
    }
    when PRIMAVERA{
        resultado = 'eh ta bom';
    }
}
System.debug(resultado;)