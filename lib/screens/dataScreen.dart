import 'package:flutter/material.dart';

//ES PARA LA TERCERA PANTALLA PANTALLA
class DatosPage extends StatelessWidget {
  const DatosPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Datos'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Image.asset(
                'assets/img/heriberto.jpg',
                width: 170.0,
              ),
              Text(
                'Heriberto Bacilio Rudino',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 24, 23, 23),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10.0),
              Text('tecnologias de la informacion y area multiplataforma:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 248, 152, 7),
                    fontFamily: 'Raleway',
                  )),
              SizedBox(width: 10.0),
              ElevatedButton(
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              ),
            ]),
      ),
    );
  }
}

