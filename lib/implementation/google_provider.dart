
import 'abstract_authentication_provider.dart';

class GoogleProvider implements AuthenticationProvider {
  @override
  void authenticate() {
    _deleteCache();
    print('Solicitando acceso a Larry Page y Serguéi Brin');
  }
  
  void _deleteCache(){
    print('Eliminando caché');
  }
}