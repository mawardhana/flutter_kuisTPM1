import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);
  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    Widget _judul() {
      return Container(
        padding: const EdgeInsets.fromLTRB(10, 40, 10, 20),
        child: Text(
          'Profilku',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
        ),
      );
    }

    Widget _Profil() {
      return ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          _judul(),
          Text(
            'Nama : Maulana Arya Wisnu Wardhana',
            style: TextStyle(fontSize: 19),
          ),
          SizedBox(height: 10),
          Text(
            'NIM : 123200138',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Kelas : IF-C',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            'Hobby : Olahraga supaya sehat',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.blue,
      ),
      body: _Profil(),
    );
  }
}
