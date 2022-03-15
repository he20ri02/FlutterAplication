import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TarjetaScreen extends StatefulWidget {
  //alt izq para cambiar todos los nombres en ek campo
  const TarjetaScreen({Key? key}) : super(key: key);

  @override
  State<TarjetaScreen> createState() => _TarjetaScreen();
}

class _TarjetaScreen extends State<TarjetaScreen> {
  late TextEditingController _controller;
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("pago con tarjeta"),
        backgroundColor: Colors.blue[200],
      ),
      //body: StackSinPos()
      body: Center(
        child: SizedBox(
          width: 900.0,
          height: 900.0,
          child: Stack(
            clipBehavior: Clip.antiAliasWithSaveLayer, fit: StackFit.expand,
            overflow: Overflow.visible,
            //clipBehavior: Clip.antiAliasWithSaveLayer,
            children: <Widget>[
              const SizedBox(width: 500.0),
              Container(
                width: 500.0,
                height: 500.0,
                //color: Colors.red,
                /*child: Image.asset(
                  "assets/img/card.png", //agregar imagen desde caretas
                  width: 100.0, //tamano de la imagen
                  height: 100.0,
                ),*/
              ),
              Positioned(
                top: 20.0,
                left: 20.0,
                child: Container(
                  width: 350.0,
                  height: 350.0,
                  //color: Colors.black,
                  child: Image.asset(
                  "assets/img/card.png", //agregar imagen desde caretas
                  width: 100.0, //tamano de la imagen
                  height: 100.0,
                  )
                ),
              ),
              Positioned(
                top: 404.0,
                left: 20.0,
                child: Container(
                  width: 350.0,
                  height: 60.0,
                  //color: Colors.black,
                  child: inputNombre(_controller),
                ),
              ),
              Positioned(
                top: 474.0,
                left: 40.0,
                child: Container(
                  width: 310.0,
                  height: 60.0,
                  //color: Colors.black,
                  child: inputCard(),
                ),
              ),
              Positioned(
                top: 544.0,
                left: 40.0,
                child: Container(
                  width: 145.0,
                  height: 60.0,
                  //color: Colors.black,
                  child: inputCVV(),
                ),
              ),
              Positioned(
                top: 544.0,
                left: 200.0,
                child: Container(
                  width: 150.0,
                  height: 60.0,
                  //color: Colors.black,
                  child: inputExpiracion(),
                ),
              ),
              
              Positioned(
                top: 655.0,
                left: 120.0,
                child: Container(
                  width: 150.0,
                  height: 60.0,
                  //color: Colors.purple,
                  child: ElevatedButton(
                    child: const Text("Pagar"),
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

Widget inputNombre(_controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 155, 153, 153), width: 4.0)),
    child: TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: true,
      controller: _controller,
      decoration: const InputDecoration(
          border: InputBorder.none,
//icon: Icon(Icons.contact_mail),
          prefixIcon: Icon(Icons.contact_mail),
          labelText: 'Nombre',
          hintText: 'Nombre completo'),
    ),
  );
}


Widget inputCard() {
  return Container(
    //padding: const EdgeInsets.symmetric(horizontal: 20.0),
    //margin: const EdgeInsets.symmetric(horizontal: 20.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 4.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        LengthLimitingTextInputFormatter(19)
      ],
      decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.credit_card),
          labelText: 'Tarjeta',
          hintText: '1234-1234-1234-1234'),
    ),
  );
}

Widget inputCVV() {
  return Container(
    //padding: const EdgeInsets.symmetric(vertical: 1.0),
    //margin: const EdgeInsets.symmetric(horizontal: 100.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 4.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
        LengthLimitingTextInputFormatter(3)
      ],
      decoration: const InputDecoration(
          border: InputBorder.none, labelText: 'CVV', hintText: '123'),
    ),
  );
}

Widget inputExpiracion() {
  return Container(
    //padding: const EdgeInsets.symmetric(vertical: 1.0),
    //margin: const EdgeInsets.symmetric(horizontal: 100.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 4.0)),
    child: TextFormField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp('[0-9 /]')),
        LengthLimitingTextInputFormatter(5)
      ],
      decoration: const InputDecoration(
          border: InputBorder.none, labelText: 'Expiración', hintText: '12/34'),
    ),
  );
}


