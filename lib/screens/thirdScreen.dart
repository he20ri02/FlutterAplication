import 'package:flutter/material.dart';

/////////////////tercera pagina
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Linea de codigo Para la barra de navegacion
        title: const Text("Tercera Pantalla"), // Linea de codigo Para la barra de navegacion
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