PImage imagemOrgao1, imagemOrgao2, fundo, imagem;
Boolean mostrarInfo1 = false;
Boolean mostrarInfo2 = false;
int opacidade = 0;
String modo = "menu";
String texto = "vazio";
String texto1 = "explicacao orgao 1";
String texto2 = "explicacao orgao 2";
int vel = 20;

void setup() {
  size(800, 800); // Definir o tamanho da janela do Processing
  fullScreen();
  
  imagemOrgao1 = loadImage("orgao1.jpg");
  imagemOrgao2 = loadImage("medica.jpg");
  fundo = loadImage("fundo.jpg");
  imagem = loadImage("orgao1.jpg");
  

  
  textAlign(CENTER);
  textSize(22);
}

void draw() {
  
  background(0);
  
  //IMAGEM DE FUNDO
  tint(255,255);
  imageMode(CENTER);
  image(fundo, width/2, height/2,width,height);
   
  
   
   
   
   
  //BOTOES DEPOIS APAGAR!!!!!!!!!!!!!!!!!!!///////////////////////////////////////////////////////////////////
  fill(255);
  rect(300,600,100,100);
  rect(950,600,100,100);

   // BOTAO1
  if(   ((300<mouseX)&&(mouseX<400))  &&   ((600<mouseY)&&(mouseY<700))   ){
  
  mostrarInfo1 = true;
  
  }else{mostrarInfo1=false;}
  //BOTAO2
   if(   ((950<mouseX)&&(mouseX<1050))  &&   ((600<mouseY)&&(mouseY<700))   ){
  
  mostrarInfo2 = true;
  
  }else{mostrarInfo2=false;}
   
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  
  
  
  
  
  
  
  //Fade in

  if ((mostrarInfo1)&&(modo=="menu")){
    
    modo="fadeIn";
    imagem = imagemOrgao1;
    texto = texto1;
    
  }
  
    if ((mostrarInfo2)&&(modo=="menu")){
    
    modo="fadeIn";
    imagem = imagemOrgao2;
    texto = texto2;
    
  }
  
  if(modo=="fadeIn"){
  
    opacidade = opacidade + vel;
    if(opacidade>255){opacidade=255;}
    
    if(opacidade==255){modo="info";}
  
  }
  
  if((modo=="info")&&(!mostrarInfo1)&&(!mostrarInfo2)){
  
    modo="fadeOut";
  }
  
   if(modo=="fadeOut"){
  
    opacidade = opacidade - vel;
    if(opacidade<0){opacidade=0;}
    
    if(opacidade==0){modo="menu";}
  
  };
  

    tint(255,opacidade);
    imageMode(CENTER);
    image(imagem, width/2, height/1.75);
    
    fill(0,opacidade);
    text(texto, width/2, height/4);
    
    //DEBUG
    fill(255,255);
    text(modo,width/2,700);
  
  
}
