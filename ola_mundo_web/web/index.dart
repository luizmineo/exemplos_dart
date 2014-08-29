import "dart:html";

main() {
  
  var nome = querySelector("#nome_usuario");
  var enviar = querySelector("#enviar");
  var areaTexto = querySelector("#area_texto");
  
  enviar.onClick.listen((_) {
    
    HttpRequest.getString("/ola-mundo?u=${nome.value}")
      .then((mensagem) {
        areaTexto.text = mensagem;
      });
    
  });
  
}