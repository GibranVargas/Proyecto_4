class Mecanicas
{
  float r1,g1,b1,r2,g2,b2;
  
  void Pantallas()
  {
    ////////////////////Cambio de pantallas
    switch(ctrl)
    {
      case 1:
        pantalla.Menu();
        break;
      case 2:
        pantalla.Camara();
        break;
    } 
  }
  void BInicio()
  {
    ////////////////////Botones en pantalla de Menú
    if((mousePressed) && (mouseButton==LEFT) &&
    (mouseX >= 150) && (mouseX <= 255) &&
    (mouseY >= 315) && (mouseY <= 340))
    {
      ////////////////////Iniciar
      mousePressed=false;
      sonido.trigger();
      ctrl=2;
    }
    if((mousePressed) && (mouseButton==LEFT) &&
    (mouseX >= 160) && (mouseX <= 235) &&
    (mouseY >= 358) && (mouseY <= 380))
    {
      ////////////////////Salir
      exit();
    }
  }
  void Detector()
  {
    video.loadPixels();
    image(video, 0, 0);
    float worldRecord = 500;
    int closestX=0;
    int closestY=0;
    for(int x = 0; x < video.width; x++)
    {
      for(int y = 0; y < video.height; y++)
      {
        int loc = x + y * video.width;
        color currentColor = video.pixels[loc];
        r1 = red(currentColor);
        g1 = green(currentColor);
        b1 = blue(currentColor);
        r2 = red(detector);
        g2 = green(detector);
        b2 = blue(detector);
        
        float d = dist(r1, g1, b1, r2, g2, b2);
        
        if (d < worldRecord)
        {
          worldRecord=d;
          closestX = x;
          closestY = y;
        }
      }
    }
    if(worldRecord < 10)
    {
      fill(detector);
      strokeWeight(1);
      stroke(0);
      ellipse(closestX, closestY, 16, 16);
      textSize(40);
      fill(255);
      text(round(r2),160,350);
      text(round(g2),160,390);
      text(round(b2),160,430);
    }
    if((mousePressed) && (mouseButton==LEFT) &&
    (mouseX>=0) && (mouseX<=350) &&
    (mouseY>=0) && (mouseY<=288))
    {
      ////////////////////Fijar objeto a detectar
      int loc = mouseX + mouseY * video.width;
      detector = video.pixels[loc];
    }
  }
  void BRegresar()
  {
    ////////////////////Botón regresar
    if((mousePressed) && (mouseButton==LEFT) &&
    (mouseX>=135) && (mouseX<=188) &&
    (mouseY>=465) && (mouseY<=480))
    {
      sonido.trigger();
      ctrl=1;
    }
  }
}
