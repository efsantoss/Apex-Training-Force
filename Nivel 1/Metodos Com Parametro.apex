public class CoversorDeTemperatura {

    public Double tempFahrenheit(Double celsius){
        //Double resultado = this.tempCelsius*1.8 + 32;
        return celsius*1.8 + 32;
    }

    //Developer Console
    ConversorDeTemperatura cTcF = new ConversorDeTemperatura();
    Double celsius = 23;
    system.debug('Temperatura em Celsius de' + celsius ' equivale à ' + cTcF);



}