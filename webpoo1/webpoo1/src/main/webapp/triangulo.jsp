<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./Assets/styles_triangulo.css">
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
                        <h3>Triangulo</h3>
                            <div class="triangulo">
                            </div>
                        <form action="servlet" method="post">
                            <input name="triBase" class="input" type="text" placeholder="Base">
                            <input name="triAltura" class="input" type="text" placeholder="Altura">
                            <button name="opcion" value="areaTriangulo" class="boton">Calcular</button>
                        </form>

                        <p>Resultado:<br> <%= request.getAttribute("opcion") %></p>
                    </div>
                </div> 

                <!-- Perimetro  -->
                <div class="container_figuras">
                    <div class="figuras">
                        <h2>Calcular Area</h2>
                        <h3>Triangulo</h3>
                            <div class="triangulo">
                            </div>
                        <form action="servlet" method="post">
                            <input name="ladoATri" class="input" type="text" placeholder="Base">
                            <input name="ladoBTri" class="input" type="text" placeholder="Altura">
                            <button name="ladocTri" value="perimetroTriangulo" class="boton">Calcular</button>
                        </form>

                        <p>Resultado:<br> <%= request.getAttribute("opcion") %></p>
                    </div>
                </div> 
            </div>
            <a href="./index.jsp">
                <button class="boton">Volver</button>
            </a>

    </div>

    
</body>
</html>