import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Tarea(),
    );
  }
}

class Tarea extends StatefulWidget {
  const Tarea({Key? key}) : super(key: key);

  @override
  State<Tarea> createState() => _TareaState();
}

class _TareaState extends State<Tarea> {
  String dato1 = "";
  String dato2 = "";
  double _resultado = 0.0;

  void sumar(d1, d2) {
    setState(() {
      _resultado = d1 + d2;
    });
  }

  void  restar(d1, d2) {
    setState(() {
      _resultado = d1 - d2;
    });
  }

  void multiplicar(d1, d2) {
    setState(() {
      _resultado = d1 * d2;
    });
  }

  void dividir(d1, d2) {
    setState(() {
      _resultado = d1 / d2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarea 1'),
      ),
      body: Container(
        margin: const EdgeInsets.all(32.0),
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese el primer dato',
                labelText: 'Dato 1',
              ),
              onChanged: (value) {
                setState(() {
                  dato1 = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese el segundo dato',
                labelText: 'Dato 2',
              ),
              onChanged: (value) {
                setState(() {
                  dato2 = value;
                });
              },
            ),
            Row(

              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    sumar(double.parse(dato1), double.parse(dato2));
                  },
                  child: const Text('Sumar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    restar(double.parse(dato1), double.parse(dato2));
                  },
                  child: const Text('Restar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    multiplicar(double.parse(dato1), double.parse(dato2));
                  },
                  child: const Text('Multiplicar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    dividir(double.parse(dato1), double.parse(dato2));
                  },
                  child: const Text('Dividir'),
                ),
              ],
            ),
            Text('El resultado es: $_resultado'),
          ],
        )
      ),
    );
  }
}
