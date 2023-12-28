public class CoversorDeTemperatura {

    private Double tempCelsius;

    public void setTempCelsius(Double temp){
        this.tempCelsius = temp;
    }

    public Double tempFahrenheit(){
        //Double resultado = this.tempCelsius*1.8 + 32;
        return this.tempCelsius*1.8 + 32;
    }

    //Developer Console
    ConversorDeTemperatura cTcF = new ConversorDeTemperatura();
    Double celsius = 23;
    cTcF.tempFahrenheit(celsius);
    Double resultado = cTcF.tempFahrenheit();
    system.debug('Temperatura em Celsius de' + celsius ' equivale à ' + resultado);


}