import 'package:flutter/material.dart';

class StackDatos extends StatelessWidget {
  const StackDatos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pagina stack"),
        backgroundColor: Colors.blue[200],
      ),
      //body: StackSinPos()
      body: Center(
        child: SizedBox(
          width: 300.0,
          height: 300.0,
          child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer, fit: StackFit.expand,
            overflow: Overflow.visible,
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            children: <Widget>[
              const SizedBox(width: 200.0),
              Container(
                width: 200.0,
                height: 200.0,
                //color: Colors.red,
                child: Image.asset(
                  "assets/img/yo.jpeg", //agregar imagen desde caretas
                  width: 100.0, //tamano de la imagen
                  height: 100.0,
                ),
              ),
              Positioned(
                top: 200.0,
                left: 35.0,
                child: Container(
                  width: 250.0,
                  height: 250.0,
                  //color: Colors.black,
                  child: const Text("Heriberto Bacilio Rudino",
                      style: TextStyle(color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              Positioned(
                top: 250.0,
                left: 35.0,
                child: Container(
                  width: 100.0,
                  height: 30.0,
                  //color: Colors.purple,
                  child: ElevatedButton(
                    child: const Text("Reresar"),
                    onPressed: () => Navigator.pop(
                        context), //pop borra a la segunda pantalla de memoria y regresa a la primera
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
