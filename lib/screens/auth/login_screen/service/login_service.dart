//

import '../../../../models/user.dart';

abstract class LoginService {
  Future<User> login({required String phoneNumber, required String password});
}
