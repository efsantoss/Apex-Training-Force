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
System.debug('***************');
Integer j = 0;
do{
    System.debug(vetor[j] + '-' j);
    j++;
}while(j<0);
System.debug('***************');
for(Integer i = 0; i<vetor.size(); i++){
    
}