import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Figuras.Circulo;
import Figuras.Rectangulo;
import Figuras.Trapecio;
import Figuras.Triangulo;

public class Servlet extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entro al servlet");
        String op=req.getParameter("op");
        System.out.println(op);
        switch(op){
            case"rectangulo":
               req.getRequestDispatcher("rectangulo.jsp").forward(req, resp);
            case"circulo":
                req.getRequestDispatcher("circulo.jsp").forward(req, resp);
            case"trapecio":
                req.getRequestDispatcher("trapecio.jsp").forward(req, resp);
            case"triangulo":
                req.getRequestDispatcher("triangulo.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entro al doPost");
        String opcion = req.getParameter("opcion");
        System.out.println(opcion);
        switch(opcion){
        // Circulo Area y Perimetro
            case "areaCirculo":
            //Extraemos el valor del input en circulo.jsp
                double radio=Double.parseDouble(req.getParameter("circuloRadio"));
            //Instanciamos la clase circulo.
                Circulo cir=new Circulo(radio);
            //Añadimos el metoso calculaArea a la opcion.
                req.setAttribute("opcion", cir.calcularArea());
            //trasladamos la informacion a la vista circulo.jsp
                req.getRequestDispatcher("circulo.jsp").forward(req, resp);
                break;
            case "perimetroCirculo":
                double radioPer=Double.parseDouble(req.getParameter("circuloRadioPer"));
                Circulo cir1=new Circulo(radioPer);
                req.setAttribute("opcion1", cir1.calcularPerimetro());
                req.getRequestDispatcher("circulo.jsp").forward(req, resp);
                break;

        //Rectangulo.
            case "areaRectangulo":
                double recBase=Double.parseDouble(req.getParameter("recBase"));
                double recAltura=Double.parseDouble(req.getParameter("recAltura"));

                Rectangulo rec=new Rectangulo(recBase, recAltura);

                req.setAttribute("opcion", rec.calcularArea());
                req.getRequestDispatcher("rectangulo.jsp").forward(req, resp);
                break;
            case "perimetroRectangulo":
                double recBasePerimetro=Double.parseDouble(req.getParameter("recBasePerimetro"));
                double recAlturaperimetro=Double.parseDouble(req.getParameter("recAlturaperimetro"));

                Rectangulo rec1=new Rectangulo(recBasePerimetro, recAlturaperimetro);

                req.setAttribute("opcionPer", rec1.calcularPerimetro());
                req.getRequestDispatcher("rectangulo.jsp").forward(req, resp);
                break;
        //Triangulo
            case "areaTriangulo":
                double triBase=Double.parseDouble(req.getParameter("triBase"));
                double truAltura=Double.parseDouble(req.getParameter("triBase"));

                Triangulo tri=new Triangulo(triBase, truAltura, 0, 0, 0);

                req.setAttribute("opcion", tri.calcularArea());
                req.getRequestDispatcher("triangulo.jsp").forward(req, resp);
                break;
            case "perimetroTriangulo":
                double ladoATri=Double.parseDouble(req.getParameter("ladoATri"));                
                double ladoBTri=Double.parseDouble(req.getParameter("ladoBTri"));
                double ladocTri=Double.parseDouble(req.getParameter("ladoCTri"));

                Triangulo tri1=new Triangulo(0,0,ladoATri,ladoBTri,ladocTri);
                req.getRequestDispatcher("triangulo.jsp").forward(req, resp);


                req.setAttribute("opcion", tri1.calcularPerimetro());
                break;
        //Trapecio
            case "areaTrapecio":
                double trapBase1=Double.parseDouble(req.getParameter("trapBase1"));
                double trapBase2=Double.parseDouble(req.getParameter("trapBase2"));
                double trapAltura=Double.parseDouble(req.getParameter("trapAltura"));

                Trapecio trap=new Trapecio(trapBase1, trapBase2, trapAltura, 0);
                
                req.setAttribute("opcion", trap.calcularArea());
                req.getRequestDispatcher("trapecio.jsp").forward(req, resp);
                break;
            case "perimetroTrapecio":
                double trapBase1per=Double.parseDouble(req.getParameter("trapBase1per"));
                double trapBase2per=Double.parseDouble(req.getParameter("trapBase2per"));
                double trapAltura1per=Double.parseDouble(req.getParameter("trapAltura1per"));
                double trapAltura2per=Double.parseDouble(req.getParameter("trapAltura2per"));

                Trapecio trap1=new Trapecio(trapBase1per,trapBase2per,trapAltura1per,trapAltura2per);
        
                req.setAttribute("opcion", trap1.calcularPerimetro());
                req.getRequestDispatcher("trapecio.jsp").forward(req, resp);
                break;
        }
    }
    
}