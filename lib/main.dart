import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const SecretSanta());
}

class SecretSanta extends StatelessWidget {
  const SecretSanta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
