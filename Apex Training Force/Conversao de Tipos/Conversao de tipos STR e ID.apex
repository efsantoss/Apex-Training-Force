Id a = '0018c00002kz1ygaa1':
String b = a;
System.debug('Id: ' + b);

Boolean resultado = b instanceof Id;
System.debug(resultado?(b+ ' é considerado um ID'):(b+'nao eh consideravel id'));

String c = '0018c00002kz1ygaa'
Boolean resultado = c instanceof Id;
System.debug(resultado?(c+ ' é considerado um ID'):(c+'nao eh consideravel id'));