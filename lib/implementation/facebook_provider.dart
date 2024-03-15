
import 'abstract_authentication_provider.dart';

class FacebookProvider implements AuthenticationProvider {
  @override
  void authenticate() {
    print('Solicitando acceso a Mark Zuckerberg');
  }
  
}