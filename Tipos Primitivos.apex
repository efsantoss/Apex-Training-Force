//Executar no Developer Console

Integer numero = 0;
Double numeroReal =3.45;
String nome = 'José';
Boolean status = true;
Boolean status2 = false;
Integer n2 = 10;
Integer n3 = 5;

Integer resultadoSoma = n2 + n3;
Double resultadoDivisao= n2 / n3;
Decimal numeroDecimal = 3.23534;
Decimal numeroDecimalDuasCasas = numeroDecimal.setScale(2);



System.debug('Numero inteiro: ' + n2);
System.debug('Nome de pessoa: ' + nome);
System.debug('Resultado da soma: ' + resultadoSoma);
System.debug('Resultado da divisão: ' + resultadoDivisao);
System.debug('Numero não delimitado: ' + numeroDecimal);
System.debug('Numero delimitado: ' + numeroDecimalDuasCasas);