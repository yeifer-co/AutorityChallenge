# Aplicación para “Gestión de Tareas” Autority dev Challenge

## Stack Empleados en el proyectos:

**Express:** https://expressjs.com
**NextJS:** https://nextjs.org/
**NodeJS:** https://nodejs.org/en/
**PostgresSQL:** https://www.postgresql.org/

## Requisitos para empezar el proyecto:

- Tener una instalación de node > 16.x
- Tener instalado PostgresSQL

> Se proporcionan dos repositorios con el boilerplate e indicaciones correspondientes,
para que sean clonados sobre el repositorio del aplicante, y sobre esta estructura se
implementen las funcionalidades detalladas en el presente documento.

## Descripción y objetivo

El objetivo del proyecto es es construir una Single Page Application empleando ReactJS
con el framework NextJS; esta aplicación se debe conectar a un API Rest elaborado en
Express, en conjunto con una base de datos PostgresSQL, que permitan un usuario
gestionar sus tareas, enfocado en cumplir las siguientes funcionalidades:

1. Ingresar a la aplicación y visualizar un listado de tareas
2. Crear nuevas tareas
3. Editar las tareas previamente creadas
4. Marcar las tareas como completadas
5. Eliminar las tareas

> Los campos que debe contener cada tarea se encuentran especificados en el proyecto
backend

## Para cumplir con este objetivo, el proyecto consta de dos repositorios:

1. Autority API Challenge
[Backend](https://github.com/LATAMPARTS/autority-api-challenge)

Esta Aplicación será la encargada de proporcionar la capa de API al cliente, en esta se encuentra la estructura REST y los métodos definidos sobre los cuales se deben trabajar los endpoints indicados en el archivo Readme del repositorio, y que posteriormente serán usados en la aplicación del Cliente.

La aplicación tiene una estructura básica lista para emplear, construida sobre Express, el objetivo está en aplicar la lógica necesaria (cálculos, validaciones, consultas a base, etc) dentro de las diferentes rutas que se deben crear en src/routes/index.js, en base a las descripciones de cada endpoint descrita en el archivo Readme.md en el que adicionalmente se encuentran las indicaciones para levantar el proyecto.

2. Autority Client Challenge
[Fronend](https://github.com/LATAMPARTS/autority-client-challenge)

La Aplicación del cliente es la que brinda a los usuarios una interfaz visual para poder gestionar las tareas, haciendo uso de la capa de API previamente desarrollada en el repositorio Autority API Challenge”. Para ello se tienen que crear las secciones necesarias definidas en el Archivo Readme.md y cumplir con los requerimientos del usuario que es:

1. Visualizar las tareas creadas
2. Poder crear nuevas tareas
3. Editar tareas
4. Poder marcar las tareas como completadas
5. Eliminar tareas

Esta aplicación es un boilerplate básico, elaborado y con la estructura planteada por NextJS, de tal manera que facilite la creación de rutas, llamados al api y manejo del estado de la aplicación; el objetivo en el cliente es cumplir con las funcionalidades planteadas, para ello se puede hacer uso de cualquier otra herramienta o framework que facilite un ágil desarrollo del UI y las funcionalidades a criterio del desarrollador, el mismo que definirá si los flujos se realizan mediante secciones, modales, páginas o lo que crea conveniente y ágil de implementar.

> La aplicación no evalúa UX/UI dentro de la aplicación, lo principal es la funcionalidad,
sin embargo se bonificará en el caso de considerar en el desarrollo estos puntos.