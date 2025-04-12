# DEMO MARVEL

### Responde las siguientes preguntas:

    1.- ¿Qué es un widget?
      Un widget representa una parte de la interfaz de usuario. Puede ser algo tan simple como un botón o un texto,
      o algo tan complejo como una pantalla completa.

    2.- Menciona 4 ejemplos de widgets nativos
      - Text
      - Container
      - ElevatedButton
      - ListView
    
    3.- ¿Cómo ejecutar código nativo desde flutter?
      A través de MethodChannel que establece canales de comunicación entre el código Dart y el código nativo.

    4.- ¿Qué es el gestor de estados? Menciona 2
      Es una herramienta que se utiliza para administrar y compartir datos entre los diferentes widgets de una
      aplicación los dos mas populares son:
      - Provider
      - Bloc
    
    5.- ¿Cómo aplicas la acción "tap (click)" a un widget que no tiene esa acción?
      De dos maneras depeniendo el comportamiento deseado del Widget
      - GestureDetector es más flexible para detectar varios gestos.
      - InkWell proporciona un efecto visual adicional para indicar la interactividad.
    
    6.- ¿Que es una dependencia y como la instalas?
      Son un paquete o biblioteca de código que proporciona funcionalidades adicionales que no están incluidas en el
      framework base de Flutter. La instalación de dependencias en Flutter se realiza principalmente a través del 
      archivo pubspec.yaml de tu proyecto una vez agregada al archivo ejecuta el comando flutter pub get dentro del 
      directorio de tu proyecto.

    7.- ¿Qué es “context (contexto)” y cómo funciona?
      El context es un elemento esencial que actúa como un puente entre los widgets y el árbol de widgets de la aplicación.
      Proporciona la ubicación de un widget dentro del árbol de widgets. Cada widget tiene su propio objeto de contexto, 
      que contiene información sobre su posición en la jerarquía.

    8.- ¿Cómo almacenar información en el dispositivo?
     Depende mucho de los tipos y cantidad de datos que se requiera almacenar hay varias maneras dependiendo lo antes comentado
      - SharedPreferences: Para akmacenar datos simples y pequeñas cantidades de datos, como configuraciones de la aplicación,
        preferencias del usuario.
      - SQLite: Para almacenar una mayor catidad de datos estructurados en una base de datos relacional.
      - Almacenamiento seguro (Flutter Secure Storage): Para almacenar datos sensibles, como contraseñas
        estos datos se guardan encriptados.

## Instalación

Para poder correr esta aplicación se require de Flutter 3.29.2
Correr el comando ``flutter pub get``

Como se indicó se utilizo Getx como gestor de estado asi como ``get_storage`` para almacenamiento local.

Insertar las llaves en el archivo .env.marvel en la raiz de los archivos, este archivo no debe subirse al reporsitorio pero en este caso por tema de pruebas se subió vacio sin las llaves, asi que se tiene que agregar su propia ```API_KEY``` y ``HASH``
