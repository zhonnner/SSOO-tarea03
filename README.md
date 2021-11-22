# SSOO-tarea03
nombre alumno: Sebastian Cabrera.  correo: sebastian.cabrera@alumnos.uv.cl

el diseño para la solucion consiste en un fork que genera un hijo del proceso en uso, los cuales naturalmente funcionan sincronizados
ademas se le añade un retraso para controlar el tiempo de salida de los numeros, ademas ocupamos una funcion para atrapar las señales que
salen en el ejemplo y SIGTERM que proviene del comando kill. y dejamos que las señales sigusr1 y 2 funcionen por default lo cual consigue
que paren los procesos por separado como se pide en el punto 3 del trabajo a realizar.

lamentablemente no logre hacer funcionar this_thread::sleep_for(std::chrono::seconds(1)), hay algo que no debo entender fundamentalmente pero 
no lo hice funcionar, intente con #define <thread>, -pthread, -D_GLIBCXX_USE_NANOSLEEP, -lpthread. pero algo estoy haciendo mal que no logre 
hacerlo funcionar

La mayor parte del tiempo lo ocupe intentando que ambos procesos funcionaran como muestra el documento, y una vez logrado hacer que se detuviera
en caso de que terminen un proceso y el otro llegue a las 50 repeticiones, ya que el programa terminaba de realizar sus instrucciones pero no terminaba
y por eso esque hay un if con un wait(NULL) en cada proceso.

finalmente ya que el fibonacci numero 50 es demasiado grande ocupamos el tipo de dato long long int para tener la memoria suficiente para guardar dicho numero

funciones utilizadas:

signal(int sig, void (*func)(int)): funcion para manejar las señales con el numero de la señal recibida

fork(): funcion que crea una copia del proceso original que es llamada child

sleep(): en remplazo del metodo recomedado en la tarea, lo ocupamos para añadir un retraso y asi controlar el tiempo de salida de los numeros

wait(): funcion que bloquea el proceso padre hasta que el proceso hijo termine