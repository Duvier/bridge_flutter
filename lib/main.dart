import 'dart:io';

import 'package:bridge_flutter/abstraction/cupertino_authenticate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'abstraction/material_authenticate.dart';
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
    return Platform.isAndroid
        ? MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialAuthenticate(
                      title: 'Iniciar sesión con Facebook',
                      provider: facebookProvider,
                    ),
                    const SizedBox(height: 10),
                    MaterialAuthenticate(
                      title: 'Iniciar sesión con Google',
                      provider: googleProvider,
                    ),
                  ],
                ),
              ),
            ),
          )
        : CupertinoApp(
            home: CupertinoPageScaffold(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    CupertinoAuthenticate(
                      title: 'Iniciar sesión con Facebook',
                      provider: facebookProvider,
                    ),
                    const SizedBox(height: 10),
                    CupertinoAuthenticate(
                      title: 'Iniciar sesión con Google',
                      provider: googleProvider,
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
