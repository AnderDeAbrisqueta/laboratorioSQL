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

## Entregable

Se tienen que generar los siguientes ficheros:

<ul>
  <li>Diagrama del modelo de datos.</li>
  <li>Markdown con explicación de porque se ha realizado dicho modelado, patrones aplicados y razón.
</li>
</ul>

## Solución

De acuerdo al enunciado se han establecuido las siguientes entidades:

<ul>
  <li>Cursos</li>
  <li>Autores</li>
  <li>Artículos</li>
  <li>Videos</li>
  <li>Temáticas</li>
</ul>

La entidad Cursos se relaciona con <b> Autores, Artículos y Videos </b> con una relación, valga la redundancia, muchos a muchos. Al igual que las entidades Autores y Artículos. Creamdo tablas con claves primarias compuestas. Por otra parte, la entidad Videos se relaciona con Temática, entidad débil, 









