//Executar no Dev Console
Date minhaData = Date.newInstance(1960, 2, 17);
System.debug(minhaData.format());
Date dataAdicionada = minhaData.addDays(2).addYears(1);
System.debug(dataAdicionada.format());
Integer dia = dataAdicionada.day();
System.debug('Dia: ' + dia);
Integer diferenca = minhaData.daysBetween(outraData);
Date outraData = Date.newInstance(1960, 2, 27);
System.debug(diferenca);