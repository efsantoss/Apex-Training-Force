Contact giuseppe = new Contact (Firstname = 'giuseppe', Lastname = 'da Silva',
                            Department = 'Financeiro');
insert giuseppe;

giuseppe.description = 'O registro do giuseppe foi atualizado pelo upsert';
Contact katia = new Contact(Firstname='Katia', Lastname='da Silva',
                            Department ='Tech');
List<Contact> contatos = new List<Contact>{giuseppe, katia};
    upsert contatos;

contact g = [SELECT Firstname,  Description FROM Contact WHERE
            Firstname='giuseppe'];
contact k = [SELECT Firstname,  Description FROM Contact WHERE
            Firstname='Katia'];

System.debug(g);
System.debug(k);