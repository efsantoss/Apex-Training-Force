Contato con = new Contact(Firstname = 'Cleito', LastName= ' Do mal', Phone = '(19) 3333 - 4444', email ='cleito.domal@gmail.com');
System.debug(con);
String strJSON = JSON.serialize(con);
System.debug(strJSON);

Contact conl = (Contact)JSON.deserialize(strJSON, Contact.Class);
