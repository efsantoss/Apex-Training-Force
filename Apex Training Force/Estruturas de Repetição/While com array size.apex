String [] vetor = new List<String>();
vetor.add('Cadeira');
vetor.add('Mesa');
vetor.add('Banco');
vetor.add('Sofá');
Integer i = 0;
while(i < vetor.size()) {
    System.debug(vetor[i]+ '-' i);
    i = i ++;
}