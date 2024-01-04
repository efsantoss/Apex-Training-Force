public class  Aluno{
    public Double n1, n2, n3, n4;

    public Double media(){
        return (this.n1+this.n2+this.n3+this.n4)/4;
    }

    public String situacao(Double media){
        if(media >= 6){
            return 'Aprovado';
        } else if(media >=4.5){
            return 'Recuperação';
        } else {
            return 'Reprovado';
        }
    } 

    Aluno a = new Aluno();
    a.n1 = 10;
    a.n3 = 8;
    a.n2 = 4;
    a.n4 = 5;

    Double media = a.media();
    a.situacao(media);
    String resultado = a.situacao(media);
    System.debug('Resultado do aluno eh ' + resultado);
}