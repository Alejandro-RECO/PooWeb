package Figuras;
public class Circulo extends Figura {
    private double radio;
    public Circulo(double radio) {
        this.radio = radio;
    }
    public Circulo(){
    }
    @Override
    public double calcularArea(){
        double pi = 3.14;
        double resultado = pi * radio*radio;
        return resultado; 
    }
    @Override
    public double calcularPerimetro() {
        double pi = 3.14;
        double resultadoPerimetro= (2*pi*radio);
        return resultadoPerimetro;
    }   
}
