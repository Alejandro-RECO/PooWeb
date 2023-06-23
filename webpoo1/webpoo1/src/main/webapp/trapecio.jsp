<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./Assets/styles_trapecio.css">
    <title>Area | Rectangulo</title>
</head>
<body>
    <div class="container_principal">

            <div class="title_text">
                <h1 class="title">Hallar el Area del Trapecio</h1>
            </div>
        <div class="container">

        <!-- Area  -->
            <div class="container_figuras">
                <div class="figuras">
                    <h2>Calcular Area</h2>
                    <h3>Trapecio</h3>
                        <div class="trapecio">
                        </div>
                    <div class="calculadores">
                        <form action="servlet" method="post">
                            <input name="trapBase1" class="input" type="text" placeholder="Base arriba">
                            <input name="trapBase2" class="input" type="text" placeholder="Base abajo">
                            <input name="trapAltura" class="input" type="text" placeholder="Altura">
                           <button name="opcion" value="areaTrapecio" class="boton">Calcular</button>
                        </form>

                    </div>
                    <p>Resultado:<br> <%= request.getAttribute("opcion") %></p>
                </div>
            </div>
            
        <!-- Perimetro -->
            <div class="container_figuras">
                <div class="figuras">
                    <h2>Calcular Perimetro</h2>
                    <h3>Trapecio</h3>
                        <div class="trapecio">
                        </div>
                    <div class="calculadores">
                        <form action="servlet" method="post">
                            <input name="trapBase1per" class="input" type="text" placeholder="Base arriba">
                            <input name="trapBase2per" class="input" type="text" placeholder="Base abajo">
                            <input name="trapAltura1per" class="input" type="text" placeholder="Altura">
                            <input name="trapAltura2per" class="input" type="text" placeholder="Altura">
                            <button name="opcion" value="perimetroTrapecio" class="boton">Calcular</button>
                        </form>
                    </div>
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