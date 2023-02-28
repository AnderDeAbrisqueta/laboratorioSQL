# Modelado Relacional

## Introducción

Laboratorio del módulo 1 del Bootcamp Backend - Modelado.

Vamos a simular que tenemos que modelar la base de datos de un portal en el que se exponen videos técnicos, categorizado por temática, autor, ...

## Enunciado

Una startup tecnológica va a desarrollar un portal de ELearning y nos ha pedido que realizamos el modelo de datos de dicho sistema.

A tener en cuenta:

<ul>
  <li>Va a ser un portal orientado al mundo de la programación.</li>
  <li>El portal va a estar compuesto por cursos, cada curso está compuesto a su vez por un número de videos y artículos que lo acompañen.</li>
  <li>Los videos y el contenido de cada artículo se almacenan en un storage S3 y en un headless CMS, en la base de datos sólo almacenaremos los Id's a esos recursos.   </li>
  <li>Los videos se puede clasificar por temáticas (Devops / Front End / Back End / ...)</li>
  <li>Los videos tienen autores (ponemos la restricción, un video tiene un autor), un curso puede tener varios autores.
</li>
</ul>

## Parte obligatoria

Generar un modelado que refleje los siguiente requerimientos:

<ul>
  <li>Queremos mostrar los últimos cursos publicados.</li>
  <li>Queremos mostrar cursos por área (devops / front End ...).</li>
  <li>Queremos mostrar un curso con sus videos.</li>
  <li>En un video queremos mostrar su autor.</li>
</ul>










