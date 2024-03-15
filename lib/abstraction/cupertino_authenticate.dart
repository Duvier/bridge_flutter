import 'package:bridge_flutter/abstraction/abstract_authenticate.dart';
import 'package:flutter/cupertino.dart';

class CupertinoAuthenticate extends Authenticate {
  const CupertinoAuthenticate({super.key, required this.title, required super.provider});
  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Text(title),
      onPressed: () {
        authenticate();
      },
    );
  }
  
}