import processing.video.*;
import ddf.minim.*;
////////////////////Camara
Capture video;
////////////////////Audio
Minim soundengine;
AudioSample sonido;
////////////////////Variables
color detector;
int ctrl = 1;

Mecanicas mecanicas;
Pantalla pantalla;

void setup()
{
  size(350, 500);
  ////////////////////Camara
  String[] cameras = Capture.list();
  printArray(cameras);
  video = new Capture(this, cameras[3]);
  detector = color(255, 0, 0);
  video.start();
  ////////////////////Audio
  soundengine = new Minim(this);
  sonido = soundengine.loadSample("Sonido.mp3", 3000);
  
  mecanicas = new Mecanicas();
  pantalla = new Pantalla();
}

void draw()
{
  background(0);
  mecanicas.Pantallas();
}

void captureEvent(Capture video) 
{
  video.read();
}
