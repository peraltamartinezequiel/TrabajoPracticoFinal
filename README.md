<a name="arriba"></a>
TRABAJO PRÁCTICO FINAL

Estamos intentando implementar un prototipo de aplicación con Flutter y Dart para luego conectar con nuestra API de Node.js y Express, en la cual decidimos utilizar la API de <a href="https://www.igdb.com/" target="_blank">IGDB (Internet Game Database)</a>.

<a name="indice"></a>
  ## 📌 Índice
  <ol>
    <li><a href="#arriba">Título y descripción del proyecto</a></li>
    <li><a href="#tecnologias">Tecnologías utilizadas</a></li>
    <li><a href="#api-android"></a>Versión de Android utilizada</li>
    <li><a href="#instalacion-flutter">Instalación Flutter</a></li>
    <li><a href="#instalacion-android">Instalación Android Studio</a></li>
    <li><a href="#funcionalidad">Funcionalidad de la App</a></li>
    <li><a href="#desarrolladores">Desarrolladores</a></li>
  </ol>

<a name="tecnologias"></a>
Tecnologías utilizadas
<p align="center">
    <a href="https://dart.dev/" target="_blank">
        <img src="https://dart.dev/assets/img/shared/dart/logo+text/horizontal/white.svg">
    </a>
    <a href="https://flutter.dev/" target="_blank">
      <img src="https://storage.googleapis.com/cms-storage-bucket/6a07d8a62f4308d2b854.svg">
    </a>
    <a href="https://developer.android.com/tools?hl=es-419" target="_blank">
      <img src="https://www.gstatic.com/devrel-devsite/prod/vc33a3662809b7010f569d1a7af7b66f2061027596eda47df3ce361ab3299c1ea/android/images/rebrand/lockup.svg">
    </a>
    <a href="https://git-scm.com/" target="_blank">
      <img src="https://git-scm.com/images/logo@2x.png">
    </a>
    <a href="https://github.com/" target="_blank">
      <img src="https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white">
    </a>
</p>
<p align="right">(<a href="arriba">Ir arriba</a>)</p>
<a name="api-android"></a>
  ## Android
  Número de API: 33.

  Versión de Android: 13.

  Para probar la apliacación, hay dos opciones:
       1. Correr el emulador de android en cualquier computadora.
       2. Conectar un teléfono celular a disposición en la computadora.

  Ejemplo: Android 13 Google APIs | x86_64

  <p align="right">(<a href="#arriba">Ir arriba</a>)</p>

  <a name="instalacion-flutter"></a>
  ## Instalación Flutter y Dart
  Si desea correr la aplicación en un entorno local tenés que tener en cuenta lo siguiente: 
  
  1. Clonar el repositorio utilizando GIT o descargando el archivo ZIP:

        `git clone https://github.com/peraltamartinezequiel/TrabajoPracticoFinal.git`    
  </br>

  2. Descargar el paquete que se referencia a continuación.
       `flutter_windows_3.16.4-stable.zip`
  </br>

  3. Extraer el paquete referenciado anteriormente.

  </br>

  4. Correr desde el powershell de windows el comando `where flutter doctor` y encontrar la carpeta `C:\src\flutter`.

  </br>

  5. Estando en esa carpeta, correr el comando `flutter doctor`, para verificar que todas las dependencias esten descargadas.

  </br>

  6. Si hay alguna dependencia sin descargar, descargarla para que pueda funcionar Flutter en su Computadora, a continuación se dará a conocer cómo se instala android studio.

  </br>

  Aclaración: Dart ya viene incluido con Flutter.

  <p align="right">(<a href="#arriba">Ir arriba</a>)</p>

  <a name="instalacion-android"></a>

  ## Instalación Android

  Si desea correr la aplicación en un entorno local tenés que tener en cuenta lo siguiente: 

  1. Descargar el ejecutable android studio desde la página `https://developer.android.com/studio?hl=es-419#downloads`

  </br>

  2. Correr el comando `flutter doctor` para ver que la instalación de android studio haya sido correcta.

  </br>

  3. En caso de que ese comando no haya detectado el ejecutable de android studio correr el comando `flutter config --android-studio-dir<directory>` para setear un directorio manualmente.

  </br>

  4. Para correr el emulador de android es necesario: 
    -Habilitar VM acceleration en su maquina.
    -Correr Android Studio, y seleccionar AVD Manager -> Create Virtual Device.
    -Elegir la definición del dispositivo y hacer clic en Next.
    -Seleccionar una o mas imágenes de Android a emular, y luego Next. (x86 or x86_64 image son recomendadas).
    -Under Emulated Performance: Seleccionar en caso de tener tarjeta gráfica: Hardware -GLES 2.0 hardware acceleration.
    -Verificar configuración y finalizar.

  </br>

  5. Para poder aceptar la licencia de android studio es necesario:
    -Asegurarse de tener Java 8 instalado y JAVA_HOME configurada como variable de enterno (JDK’s folder)
    Aclaración: Android Studio 2.2 o superior ya viene con JDK.
    -Abrir una consola de window y correr el comando `flutter doctor --android-licenses` para firmar las licencias.
    -Verificar TYC.
    -Correr nuevamente el comando `flutter doctor` y verificar si se puede usar Flutter.

  </br>

  6. Para poder levantar nuestro dispositivo android se necesita correr android 4.1 (API 16) o superior. Se recomienda utilizar la API 29 o superior.

  <p align="right">(<a href="#arriba">Ir arriba</a>)</p>

  <a name="funcionalidad"></a>
  ## ⚙️ Funcionalidad de la App
  La aplicación cuenta con los siguientes ¿sreens:
  <ul>
    <li>CardPersonaje()</li>
    <li>GameInfoScreen()</li>
    <li>GameListScreen</li>
    <li>HomeScreen()</li>
    <li>ListadoRegistroPersonaje()</li>
    <li>ListadoRegostrosPersonajes()</li>
  </ul>
  <p align="right">(<a href="#arriba">Ir arriba</a>)</p>

  <a name="desarrolladores"></a>
  ## 📩 Desarrolladores
   - Tatiana Gutierrez 
   - Ezequiel Peralta Martin
  
   Link del proyecto: https://github.com/peraltamartinezequiel/TrabajoPracticoFinal
  <p align="right">(<a href="#ir-arriba">Ir arriba</a>)</p>





