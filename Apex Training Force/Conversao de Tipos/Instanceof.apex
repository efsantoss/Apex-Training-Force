Id a = '0018c00002kzlygaal':
String b = a;
System.debug('Id: ' + b);

Boolean resultado = b instanceof Id;
System.debug(resultado?(b+ ' é considerado um ID'):(b+'nao eh consideravel id'));