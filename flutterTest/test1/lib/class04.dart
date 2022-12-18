void main() {
  const clima = datos.soleado;

  switch (clima) {
    case datos.soleado:
      print('Hoy esta soleado');
      break;
    case datos.caluroso:
      print('Hoy hace calor');
      break;
    case datos.frio:
      print('Hoy hace frio');
      break;
    case datos.lluvioso:
      print('Hoy esta lloviendo');
      break;
    case datos.nieve:
      print('Hoy esta nevando');
      break;
    case datos.nublado:
      print('Hoy esta nublado');
      break;
    case datos.tormenta:
      print('Hoy esta tormentoso');
      break;
    case datos.viento:
      print('Hoy esta ventoso');
      break;
    case datos.granizo:
      print('Hoy esta granizando');
      break;
    case datos.niebla:
      print('Hoy esta neblinoso');
      break;
    default:
      print('No se reconoce el clima');
      break;
  }
}

enum datos {
  soleado,  
  lluvioso,
  nublado,    
  tormenta,  
  nieve,   
  granizo,
  niebla,
  caluroso, 
  frio,   
  viento  
}
