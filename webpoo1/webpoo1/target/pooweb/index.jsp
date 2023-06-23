<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Assets/styles.css">
    <title>Area | Figuras</title>
</head>
<body>
    <div class="container_principal">

        <div class="container">
            <div class="title_text">
                <h1 class="title">Hallar el Area de las Figuras</h1>
            </div>
            <div class="container_figuras">
                <div class="figuras">
                    <h2>Calcular Area</h2>
                    <h3>Rectangulo</h3>
                    <a href="servlet?op=rectangulo">
                        <div class="rectangulo ani">
                        </div>
                    </a>

                </div>
                <div class="figuras">
                    <h2>Calcular Area</h2>
                    <h3>Círculo</h3>
                    <a href="servlet?op=circulo">
                        <div class="circulo ani">
                        </div>
                    </a>

                </div>
                <div class="figuras">
                    <h2>Calcular Area</h2>
                    <h3>Triangulo</h3>
                    <a href="servlet?op=triangulo">
                        <div class="triangulo ani">
                        </div>         
                    </a>
                </div>
                <div class="figuras">
                    <h2>Calcular Area</h2>
                    <h3>Trapecio</h3>
                    <a href="servlet?op=trapecio">
                        <div class="trapecio ani">
                        </div>
                    </a>
                </div>
            </div>  
        </div>

    </div>

    
</body>
</html>