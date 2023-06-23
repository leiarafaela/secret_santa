import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(
    const SecretSanta(),
  );
}

class SecretSanta extends StatelessWidget {
  const SecretSanta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.black),
      ),
      home: const HomePage(),
    );
  }
}

// Adicione um novo documento à coleção 'users'
Future<void> addUser() async {
  await FirebaseFirestore.instance.collection('group').add({
    'details': 'teste',
    'name': 'teste',
    'users': [
      {'name': 'rafa', 'phone': '11111'},
      {'name': 'gabi', 'phone': '11111'}
    ],
  });
}
