class Pantalla
{
  void Menu()
  {
    ////////////////////Pantalla 1 (ctrl=1)
    textSize(50);
    fill(random(0,255),random(0,255),random(0,255));
    text("DETECTOR",50,180);
    fill(random(0,255),random(0,255),random(0,255));
    text("de color",80,220);
    
    textSize(30);
    if((mouseX >= 120) && (mouseX <= 225) &&
    (mouseY >= 315) && (mouseY <= 340))
    {
      fill(random(0,255),random(0,255),random(0,255));    
    }
    else
    {
      fill(255);
    }
    text("INICIAR",120,340);
    if((mouseX >= 130) && (mouseX <= 205) &&
    (mouseY >= 358) && (mouseY <= 380))
    {
      fill(random(0,255),random(0,255),random(0,255));    
    }
    else
    {
      fill(255);
    }
    text("SALIR", 130,380);
    
    mecanicas.BInicio();
  }
  void Camara()
  {
    ////////////////////Pantalla 2 (ctrl=2)
    mecanicas.Detector();
    mecanicas.BRegresar();
    
    textSize(40);
    fill(255,0,0);
    text("R: ",115,350);
    textSize(40);
    fill(0,255,0);
    text("G: ",115,390);
    textSize(40);
    fill(0,0,255);
    text("B: ",115,430);
    
    textSize(15);
    if((mouseX>=135) && (mouseX<=188) &&
    (mouseY>=465) && (mouseY<=480))
    {
      fill(random(255),random(255),random(255));
    }
    else
    {
      fill(255);
    }
    text("REGRESAR",135, 480);
  }
}
