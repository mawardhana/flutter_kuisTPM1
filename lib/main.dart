import 'package:flutter/material.dart';
import 'segitiga.dart';
import 'layang2.dart';
import 'profil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz TPM'),
      ),
      body: Center(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value == 0)
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Segitiga()));
          if (value == 1)
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Layang2()));
          if (value == 2)
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Profil()));
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.label_important),
            label: 'Segitiga',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspaces_outline),
            label: 'Layang-Layang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
