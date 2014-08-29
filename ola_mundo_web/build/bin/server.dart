import "package:redstone/server.dart" as app;
import "package:shelf_static/shelf_static.dart";

@app.Route("/ola-mundo")
String olaMundo(@app.QueryParam("u") String usuario) {
  if (usuario == null || usuario.isEmpty) {
    return "Olá, mundo!";
  } else {
    return "Olá, $usuario!";
  }
}

main() {
  app.setupConsoleLog();
  app.setShelfHandler(createStaticHandler("web", 
                                          defaultDocument: "index.html",
                                          serveFilesOutsidePath: true));
  
  app.start();
}