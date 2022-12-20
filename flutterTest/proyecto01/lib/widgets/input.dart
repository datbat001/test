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
      home: const InputW(),
    );
  }
}

class InputW extends StatefulWidget {
  const InputW({Key? key}) : super(key: key);

  @override
  State<InputW> createState() => _InputWState();
}

class _InputWState extends State<InputW> {
  String _email = "";
  String _password = "";

  void _enviar() {
    //enviar una alerta
    if (_email == "" || _password == "") {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Error'),
              content: const Text('Debe ingresar todos los datos'),
              actions: <Widget>[
                TextButton(
                  child: const Text('Aceptar'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          });
    } else if (_email == "admin" || _password == "1234") {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Bienvenido'),
            content:  Text("Ingreso exitoso con el usuario: $_email y la contraseña: $_password"),
            actions: <Widget>[
              TextButton(
                child: const Text('Aceptar'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

  }

  void _onChangedEmail(String value) {
    setState(() {
      _email = value;
    });
  }

  void _onChangedPassword(String value) {
    setState(() {
      _password = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Widget'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese su email',
                labelText: 'Email',
              ),
              onChanged: _onChangedEmail,
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Ingrese su contraseña',
                labelText: 'Contraseña',
              ),
              onChanged: _onChangedPassword,
            ),
            Container(
              margin: const EdgeInsets.only(top: 32),
              child: ElevatedButton(
                onPressed: _enviar,
                child: const Text('Enviar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
