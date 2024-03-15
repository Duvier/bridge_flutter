
import 'package:flutter/material.dart';

import 'abstract_authentication_provider.dart';

class GoogleProvider implements AuthenticationProvider {
  @override
  void authenticate() {
    _deleteCache();
    debugPrint('Solicitando acceso a Larry Page y Serguéi Brin');
  }
  
  void _deleteCache(){
    debugPrint('Eliminando caché');
  }
}