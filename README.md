# Geslico

[![Build Status](https://travis-ci.org/geslico/geslico.svg?branch=master)](https://travis-ci.org/geslico/geslico)
[![Code Climate](https://codeclimate.com/github/geslico/geslico/badges/gpa.svg)](https://codeclimate.com/github/geslico/geslico)

Aplicación desarrollada para la Gestión de Líneas de Comunicación del Ayuntamiento de Madrid. La aplicación original está desarrollada en Visual Basic, este nuevo desarrollo responde a nuestro interes en mejorar para nuestros usuarios. 

El modelo de base de datos y la base de datos existente previamente a este nuevo proyecto en RoR condiciona ciertos aspectos en nuestro desarrollo. 

## Componentes  

Los componentes que estamos utilizando actualemte en nuestro proyecto son las siguientes. 
- Ruby 2.3.3
- Rails 5.0.2
- Tiny_tds 1.1
- activerecord-sqlserver-adapter 5.0.5
- Foundation 6
- ransack 1.8.2

## Pruebas Unitarias e Integración Continua
2017/03/24

Entre los objetivos de nuestra hoja de ruta tenemos marcado el desarrollo de Pruebas Unitarias(Rspec) y la Integración Continua(Travis ci).
Nuestras necesidades para ello son disponer una base de datos de Test y digamos que SQL Server no está entre las favoritas del público. Probablemente hubiéramos escogido otra pero como hemos dicho Geslico es una aplicación en Producción con una base de datos SQL Server 2012 detrás, con un modelo de datos monstruoso y no pocos vicios además de numerosos procesos de Microsoft SQL Integration Sevices(SSIS) que son los que realmente sustentan nuestros sistema de información. 

Afortunadamente los astros se han alineado con nosotros y recientemente Microsoft a publicad una versión de SQL Server para Linux (wow!)  https://www.microsoft.com/en-us/sql-server/sql-server-vnext-including-linux. 
Esto nos abrió la puerta a poder hacer test en local pero por desgracia Travis ci no estaba preparado para SQL Server 12, al menos no de un modo sencillo. Para poder tener nuestra base de datos de test montada en Travis hemos tenido que pasar por Docker que si es soportado por Travis. Dentro del contenedor Docker hemos podido tener nuestra base de datos SQL Server 2012 y así hemos conseguido cumplir todos los objetivos hasta la fecha.
