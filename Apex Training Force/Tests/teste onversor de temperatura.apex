//classe de teste
@isTest
public class ConversorDeTemperatura {
    @isTest static void celsiusFah(Decimal c){
        return c*1.8 + 32;
    }
}
//Mais uma classe de teste
public class TesteConversorDeTemperatura {
    @isTest static void testaFormula(){
        Decimal f = ConversorDeTemperatura.celsiusFah(32);
        System.assertEquals(32, f)
        //System.assertEquals(expected, actual) compara valor esperado com oq o sistema da

    }
}

public class ConversorDeTemperatura {
    public static Decimal celsiusFah(Decimal c){
        return c * 1.8 + 32;
    }
}