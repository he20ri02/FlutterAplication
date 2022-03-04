import 'package:flutter/material.dart';

/////////////////segunda pagina
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Linea de codigo Para la barra de navegacion
        title: const Text("Segunda Pantalla"), // Linea de codigo Para la barra de navegacion
      ),
      body:Center(
        child: ElevatedButton( 
        child: const Text("Reresar"),
        onPressed: () => Navigator.pop(context),//pop borra a la segunda pantalla de memoria y regresa a la primera
      ),
      ),
    );
  }
}
