import 'package:bridge_flutter/abtraction/cupertino_authenticate.dart';
import 'package:flutter/material.dart';

import 'abtraction/material_authenticate.dart';
import 'implementation/facebook_provider.dart';
import 'implementation/google_provider.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final facebookProvider = FacebookProvider();
  final googleProvider = GoogleProvider();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hola Mundo!'),
              const SizedBox(height: 40),
              CupertinoAuthenticate(title: 'Iniciar sesión con Facebook', provider: facebookProvider),
              const SizedBox(height: 10),
              CupertinoAuthenticate(title: 'Iniciar sesión con Google', provider: googleProvider),
              const Divider(height: 80),
              MaterialAuthenticate(title: 'Iniciar sesión con Facebook', provider: facebookProvider),
              const SizedBox(height: 10),
              MaterialAuthenticate(title: 'Iniciar sesión con Google', provider: googleProvider),
            ],
          ),
        ),
      ),
    );
  }
}
