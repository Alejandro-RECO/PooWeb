package Figuras;

public class Trapecio extends Figura {
    private double base1;
    private double base2;
    private double altura1;
    private double altura2;


    

    public Trapecio(double base1, double base2, double altura1, double altura2) {
        this.base1 = base1;
        this.base2 = base2;
        this.altura1 = altura1;
        this.altura2 = altura2;

    }

    public Trapecio() {
    }



    public double getBase1() {
        return base1;
    }

    public void setBase1(double base1) {
        this.base1 = base1;
    }

    public double getBase2() {
        return base2;
    }

    public void setBase2(double base2) {
        this.base2 = base2;
    }

    public double getAltura1() {
        return altura1;
    }

    public void setAltura1(double altura1) {
        this.altura1 = altura1;
    }

    public double getAltura2() {
        return altura2;
    }

    public void setAltura2(double altura2) {
        this.altura2 = altura2;
    }

    @Override
    public double calcularArea() {
        double resultado=(base1+base2)*altura1/2;
        return resultado;
    }

    @Override
    public double calcularPerimetro() {
        double resultadoPerimetro=(altura1+base1+base2+altura2);
        return resultadoPerimetro;
    }

    

    



    

    
}
