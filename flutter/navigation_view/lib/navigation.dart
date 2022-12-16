import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Drawer';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      color: Colors.purple,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Datbat Valerio", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              accountEmail: Text("davidalejandro1240@gmail.com", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fcvj2-1.fna.fbcdn.net/v/t39.30808-6/281797413_7271840936221835_1265146639117764745_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGs-1YTKj34RaSVx6pZuxYVZ8bTxOZ5pttnxtPE5nmm20ud26DLMHJ4bEO6VlSqDajOY3fvVjPNeC0AT7Ee-hT2&_nc_ohc=3KyJJ7CIHFUAX8cGaOv&_nc_ht=scontent.fcvj2-1.fna&oh=00_AfCuZ_vA9E0VoUdAGh0Zq0MBMKYrkNbv8dCQi4SULeEyDw&oe=63A11985"),
              ),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://www.giantbomb.com/a/uploads/scale_small/2/27436/2722697-gon_freecss_2617.jpg"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://w7.pngwing.com/pngs/492/445/png-transparent-killua-zoldyck-anime-gon-freecss-kakashi-hatake-mangaka-anime-purple-mammal-face.png"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Perfil"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text("Problema"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
