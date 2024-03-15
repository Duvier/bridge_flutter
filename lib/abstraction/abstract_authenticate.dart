import 'package:flutter/material.dart';

import '../implementation/abstract_authentication_provider.dart';

abstract class Authenticate extends StatelessWidget {
  const Authenticate({super.key, required this.provider});
  final AuthenticationProvider provider;

  void authenticate() {
    provider.authenticate();
  }
}
