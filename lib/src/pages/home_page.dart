import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TextStyle estiloText = new TextStyle(fontSize: 25);
  Color clr = const Color(0xFFFF9000);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patrick!!'),
        centerTitle: true,
        backgroundColor: const Color(0xff03dac6),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contador',
            style: estiloText,
          ),
          Text(
            '$contador',
            style: estiloText,
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFF9000),
        foregroundColor: Colors.black,
        onPressed: () {
          print('Hola Mundo');

          //contador = contador + 1;
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
