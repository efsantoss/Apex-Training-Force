Time minhaHora = Time.newInstance(1, 5, 10, 302);
System.debug(minhaHora);
Time horaAdicionada = minhaHora.addHours(3).addMinutes(5);
System.debug(horaAdicionada);
Integer hora = horaAdicionada.hour();
System.debug('Hora: ' + hora);