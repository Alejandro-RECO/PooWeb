<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./Assets/styles_rectangulo.css">
    <title>Area | Rectangulo</title>
</head>
<body>
    <div class="container_principal">
        <div class="title_text">
            <h1 class="title">Hallar el Area del Rectangulo</h1>
        </div>
           <div class="container">

            <!-- Area  -->
            <div class="container_figuras">
                <div class="figuras">
                    <h2>Calcular Area</h2>
                    <h3>Rectangulo</h3>
                        <div class="rectangulo">
                        </div>
                    <form action="servlet" method="post">
                        <input name="recBase" class="input" type="text" placeholder="Base">
                        <input name="recAltura" class="input" type="text" placeholder="Altura">
                        <button name="opcion" value="areaRectangulo" class="boton">Calcular</button>
                    </form>

                    <p>Resultado:<%= request.getAttribute("opcion") %></p>
                </div>
            </div> 

            <!-- Perimetro -->
            <div class="container_figuras">
                <div class="figuras">
                    <h2>Calcular perimetro</h2>
                    <h3>Rectangulo</h3>
                        <div class="rectangulo">
                        </div>
                    <form action="servlet" method="post">
                        <input name="recBasePerimetro" class="input" type="text" placeholder="Base">
                        <input name="recAlturaperimetro" class="input" type="text" placeholder="Altura">
                        <button name="opcion" value="perimetroRectangulo" class="boton">Calcular</button>
                    </form>

                    <p>Resultado:<%= request.getAttribute("opcionPer") %></p>
                </div>
            </div> 
        </div>
            <a href="./index.jsp">
                <button name="control" class="boton" value="areaRectangulo">Volver</button>
            </a>


    </div>

    
</body>
</html>