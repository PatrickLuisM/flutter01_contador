import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloText = const TextStyle(fontSize: 25);

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Patrick', style: _estiloText),
          centerTitle: true,
          backgroundColor: const Color(0xff03dac6),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contador',
              style: _estiloText,
            ),
            Text(
              '$_contador',
              style: _estiloText,
            ),
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(width: 30),
        FloatingActionButton(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.black,
          child: const Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        const Expanded(child: SizedBox()),
        FloatingActionButton(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.black,
          child: const Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        const SizedBox(width: 20),
        FloatingActionButton(
          backgroundColor: const Color(0xff03dac6),
          foregroundColor: Colors.black,
          child: const Icon(Icons.add),
          onPressed: _agregar,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() {
      _contador++;
    });
  }

  void _sustraer() {
    setState(() {
      _contador--;
    });
  }

  void _reset() {
    setState(() {
      _contador = 0;
    });
  }
}
