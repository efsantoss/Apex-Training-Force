String query = 'SELECT ID, name, FROM Account WHERE Name ' +
    'LIKE \ ' ACM%\'';
String saida = JSON.serialize(database.query(requisicao));
System.debug(saida);