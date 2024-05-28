<div align="center">
<h1>Proyecto Integrador de PSeInt UTN-FRSR</h1>
    <img src="https://raw.githubusercontent.com/solidsnk86/class-git/master/logo_los_terreneitor.jpg" width="160" height="160" />
</div>

<h3>Calculadora de Materiales de Construcción</h3>

### Descripción

Bienvenido a la Calculadora de Materiales de Construcción, un proyecto integrador desarrollado en PSeInt para la UTN-FRSR. Este programa está diseñado para facilitar el cálculo de los materiales necesarios para diversas tareas de construcción, tales como la construcción de muros de ladrillo, vigas y columnas de hormigón, contrapisos, techos, pisos, pintura e iluminación.

### Funcionalidades

El programa cuenta con un menú interactivo que permite al usuario seleccionar la tarea específica que desea calcular. A partir de esta selección, se ejecutarán diferentes subprogramas que realizan los cálculos necesarios basados en las dimensiones y especificaciones proporcionadas por el usuario.

### Menú Principal

El menú principal del programa es el siguiente:

1. **Calcular muro de ladrillo**: Calcula la cantidad de ladrillos, mortero y otros materiales necesarios para construir un muro de ladrillo según las dimensiones ingresadas.
2. **Calcular viga de hormigón**: Calcula el volumen de hormigón, acero de refuerzo y otros materiales necesarios para construir una viga de hormigón.
3. **Calcular columnas de hormigón**: Calcula el volumen de hormigón, acero de refuerzo y otros materiales necesarios para construir columnas de hormigón.
4. **Calcular contrapisos**: Calcula la cantidad de hormigón y otros materiales necesarios para construir contrapisos según las dimensiones ingresadas.
5. **Calcular techo**: Calcula los materiales necesarios para la construcción de techos, incluyendo vigas, material de cubierta y aislantes.
6. **Calcular pisos**: Calcula la cantidad de baldosas, mortero y otros materiales necesarios para colocar pisos.
7. **Calcular pintura**: Calcula la cantidad de pintura necesaria para cubrir superficies, considerando el tipo de superficie y la cantidad de manos de pintura.
8. **Calcular iluminación**: Calcula la cantidad de lámparas y otros elementos necesarios para iluminar una habitación según los estándares de iluminación.
9. **Salir**: Termina la ejecución del programa.

### Estructura del Proyecto

El algoritmo principal del programa está diseñado para ser sencillo y eficiente, delegando la mayor parte de las tareas a subprogramas especializados. Cada opción del menú principal llama a un subprograma correspondiente, el cual puede estar compuesto por otros subprogramas según sea necesario. Esta estructura modular permite una fácil expansión y mantenimiento del código.

### Equipo

Este proyecto fue desarrollado como parte del curso de Programación en PSeInt de la UTN-FRSR de grupo `Los Terreneitor`.

Este archivo *README.md* sirve como portada y guía para el uso del programa, proporcionando una visión general de sus funcionalidades y estructura.

---

### Para colaborar

Para contribuir en éste proyecto lo primero que debemos hacer es:

1. Fork del Repositorio

- Primero vamos hacer un fork del repositorio original, esto crea una copia en del repo en nuestra cuenta de github. Dirígete al repositorio que deseas forkar. Puedes buscar el repositorio utilizando la barra de búsqueda en la parte superior de la página o navegando directamente a su URL.

- Una vez que estés en la página del repositorio, busca el botón que dice "Fork" en la esquina superior derecha de la página, justo debajo de tu foto de perfil.

<img src="public/fork-github.png" alt="Captura de imagen para hacer un fork." />

2. Clonar el Repositorio Forkeado

- Una vez que has forkeado el repositorio vamos clonar ésta url desde nuestra consola de GitBash:

```bash
git clone https://github.com/solidsnk86/tp-pseint-utn.git
```

3. Crear una Rama y Hacer Cambios

- Crea una nueva rama para tus cambios. Es una buena práctica nombrar la rama de acuerdo a la funcionalidad o el arreglo que estés implementando, también podemos usar nuestros nombres para identificarnos en este TP.

```bash
git checkout -b nombre-de-la-rama
```

4. Realizar Cambios y Hacer Commits

- Realiza los cambios necesarios en el código y realiza commits frecuentemente con mensajes descriptivos.

```bash
git add .
git commit -m "Descripción de los cambios"
```

5. Subir la Rama al Repositorio Forkeado

- Sube la rama a tu repositorio forkeado en GitHub.

```bash
git push origin nombre-de-la-rama
```

6. git push origin nombre-de-la-rama

- En GitHub, vamos a niestro repositorio forkeado y encontrarás un botón para crear un nuevo pull request. Sigue las instrucciones para solicitar la incorporación de tus cambios en el repositorio original.

### Resumen del Flujo

1. Fork el repositorio original en GitHub.
2. Clonamos el repositorio forkeado a tu máquina local.
3. Crea una nueva rama para tus cambios.
4. Realizar cambios y hacer los commits.
5. Sube la nueva rama al repositorio forkeado.
6. Crea un pull request para solicitar la incorporación de tus cambios.

<div style="border-left: 4px solid #3498db; padding: 10px;">
  <strong>Tip:</strong> Para poder hacer un paste en la consola de git bash después de haber copiado algo vamos a usar (<b>shift</b> + <b>Insert</b>).
</div>

#

<div align="center">
UTN - TP PSEINT 2024
</div>


