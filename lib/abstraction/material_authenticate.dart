import 'package:flutter/material.dart';

import 'abstract_authenticate.dart';

class MaterialAuthenticate extends Authenticate {
  const MaterialAuthenticate({super.key, required this.title, required super.provider});
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(title),
      onPressed: () {
        authenticate();
      },
    );
  }
}
