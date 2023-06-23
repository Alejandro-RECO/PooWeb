package Figuras;

import java.util.Scanner;

public class Rectangulo extends Figura {
    private double base;
    private double altura;


    public Rectangulo(double base, double altura) {
        this.base = base;
        this.altura = altura;
    }

    public Rectangulo() {
    }

    @Override
    public double calcularArea() {

        double resultado=base*altura;
        return resultado;
    }

    @Override
    public double calcularPerimetro() {
        double resultadoPerimetro=(base*2+altura*2);
        return resultadoPerimetro;
    }
    
}
