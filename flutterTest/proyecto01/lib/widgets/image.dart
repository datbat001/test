import 'package:flutter/material.dart';

void main () => runApp(const widget1());

class widget1 extends StatelessWidget {
  const widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const imagen(),
    );
  }
}

class imagen extends StatelessWidget {
  const imagen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget 1'),
      ),
      body: Center(
        child: Column(
          children: [
            Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
            ),
            Image(
              image: NetworkImage('https://picsum.photos/250?image=9'),
            ),
            Text(
              'Hola Mundo',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
              ),
          ],
        ),
      ),
    );
  }
}