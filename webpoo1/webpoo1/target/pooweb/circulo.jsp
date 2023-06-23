<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./Assets/styles_circulo.css">
    <title>Area | Rectangulo</title>
</head>
<body>
    <div class="container_principal">

            <div class="title_text">
                <h1 class="title">Hallar el Area y perimetro del Circulo</h1>
            </div>
            <div class="container">
                <!-- Area  -->
                <div class="container_figuras">
                    <div class="figuras">
                        <h2>Calcular Area</h2>
                        <h3>Círculo</h3>
                        <div class="circulo">
                        </div>
                        <form action="servlet" method="post">
                            <input name="circuloRadio" class="input" type="text" placeholder="Radio">
                            <button name="opcion" value="areaCirculo" class="boton">Calcular</button>
                        </form>
                        
                        <p>El area es <br> <%= request.getAttribute("opcion") %></p>
                    
                    </div>
                </div> 

                <!-- Perimetro  -->

                <div class="container_figuras">
                    <div class="figuras">
                        <h2>Calcular Perimetro</h2>
                        <h3>Círculo</h3>
                        <div class="circulo">
                        </div>
                        <form action="servlet" method="post">
                            <input name="circuloRadioPer" class="input" type="text" placeholder="Radio">
                            <button name="opcion" value="perimetroCirculo" class="boton">Calcular</button>
                        </form>
                        
                        <p>El perimetro es <br> <%= request.getAttribute("opcion1") %></p>
                    
                    </div>
                </div>
            
            </div>
            <a href="./index.jsp">
                <button class="boton">Volver</button>
            </a>

    </div>

    
</body>
</html>