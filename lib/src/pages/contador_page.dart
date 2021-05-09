import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _cont = 0;
  final _colorApp = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
          backgroundColor: _colorApp,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número de Taps:',
                style: _estiloTexto,
              ),
              Text('$_cont', style: _estiloTexto),
            ],
          ),
        ),
        floatingActionButton: _crearBotones(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat);
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      SizedBox(
        width: 30.0,
      ),
      FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
      SizedBox(
        width: 20.0,
      ),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
    ]);
  }

  void _agregar() {
    setState(() {
      _cont++;
    });
  }

  void _sustraer() {
    setState(() {
      _cont--;
    });
  }

  void _reset() {
    setState(() {
      _cont = 0;
    });
  }
}
