//Abrir o query editor
//escrever o codigo sosl

FIND {Acme} RETURNING Account(Name)
//Vai retornar td q ele achou no campo Account com o Name ACME

FIND {Acme} IN ALL FIELDS RETURNING Account(Name), Contact(FirstName, AccountId)
