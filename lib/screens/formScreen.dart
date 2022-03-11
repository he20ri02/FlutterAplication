import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget { //alt izq para cambiar todos los nombres en ek campo
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late TextEditingController _controller;
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }
  @override
  void dispose(){
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          width: 200.0,//
          height: 200.0,//
          child: Padding(
            padding: const EdgeInsets.all(20.0), //despegar los campos de las orillas
            child: Column(
              children: [
                TextField(
                  //keyboardType: TextInputType.emailAddress, //tipo de teclado enpantalla
                  controller: _controller, // clase guion bajo
                  decoration: const InputDecoration(
                    labelText: 'Correo',
                    hintText:'correo@correo.com', //equivalente al placeholder
                    prefixIcon: Icon(Icons.contact_mail)
                    //icon: Icon(Icons.contact_mail)
                  ),
                ),
                  const SizedBox(height:40.0),//espacio
                  const TextField(
                    //obscureText: true,
                    decoration: InputDecoration(
                      labelText:'Contrasea',
                      prefixIcon: Icon(Icons.lock)
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9 -]')),
                    LengthLimitingTextInputFormatter(16)
                    ],
                    decoration: const InputDecoration(
                      labelText:'tarjeta',
                      prefixIcon: Icon(Icons.card_giftcard)
                       )
                  ),
                  const SizedBox(height: 40.0),
                  Checkbox(
                    value: _isChecked, 
                  onChanged: (bool? value) {
                    setState((){
                      _isChecked = true;
                    });
                    
                  },
                   )
                  


                 /*
                  onSubmitted: (String value) async {
                    await showDialog(context: context, 
                    builder: (BuildContext context){
                      return AlertDialog(
                        title: Text("Mensaje"),
                        content: Text('Has escrito "$value" , y tiene un alongitud ${value.characters.length}'),
                        actions: <Widget>[
                          TextButton( 
                          onPressed: () => Navigator.pop(context),
                          child: const Text("Ok")
                          )
                        ],
                      );
                    }
                    );
                  }
                  */
              ],
            ),
          ),
        ),
      ),
    );
  }

}