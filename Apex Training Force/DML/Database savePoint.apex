//classe util pra fazer testes no banco p n dar errado direto no banco
Account a = new Account(Name = 'ssss');
insert a;
System.assertEquals(null, [SELECT AccountNumber FROM Account WHERE Id = :a.Id].AccountNumber);
Savepoint sp = Database.setSavepoint();

a.AccountNumber = '12345678';

update a;

System.assertEquals('12345678', [SELECT AccountNumber FROM Account WHERE Id = :a.Id].AccountNumber);

Account b = [SELECT Name, AccountNumber FROM Account WHERE Name = 'ssss' LIMIT 1];
System.debug('Numero da conta de nome ssss apos o update eh: ' + b.AccountNumber);

Database.rollback(sp);

Account c = [SELECT Name, AccountNumber FROM Account WHERE Name = 'ssss'];
System.debug('Numero da conta de nome ssss apos o update eh: ' + c.AccountNumber);

