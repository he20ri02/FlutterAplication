import 'package:flutter/material.dart';


class TestStack extends StatelessWidget {
  const TestStack({Key? key}) : super(key: key);

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
                Container(
                  width: 300.0,
                  height: 300.0,

                  color: Colors.red,
                ),
                Positioned(
                  top: 80.0,
                  left: 80.0,
                  child: Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: 20.0,
                  child: Container(
                    width: 250.0,
                    height: 250.0,
                    color: Colors.purple,
                  ),
                )
              ],

          ),
        ),
      ),
    );
  }

  //metodo de widgets
  Widget StackSinPos(){
    return Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.red,
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.all(15),
                  child: const Text("Cuadro 1",
                  style: TextStyle(color: Colors.white)
                  ),
                ),
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.black,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(15),
                  child: const Text("Cuadro 2",
                  style: TextStyle(color: Colors.white)
                  ),
                  
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.purple,
                  alignment: Alignment.bottomCenter,
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(
                    image: DecorationImage( 
                      image: NetworkImage("https://pixlok.com/wp-content/uploads/2021/05/flutter-logo-768x768.jpg")
                    )
                  ),
                  child: const Text("Cuadro 2",
                  style: TextStyle(color: Colors.white)
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
