
import 'package:flutter/material.dart';

import 'abstract_authentication_provider.dart';

class FacebookProvider implements AuthenticationProvider {
  @override
  void authenticate() {
    debugPrint('Solicitando acceso a Mark Zuckerberg');
  }
  
}