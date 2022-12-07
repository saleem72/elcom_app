//

import 'package:elcom_app/helpers/network_manager/network_manager_cubit.dart';
import 'package:elcom_app/models/failure.dart';
import 'package:elcom_app/models/user.dart';
import 'package:elcom_app/screens/auth/login_screen/service/login_service.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<User> login(
      {required String phoneNumber, required String password}) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    if (phoneNumber == '0115555555' && password == '12345') {
      return User.mockUser;
    } else {
      throw const Failure(message: 'invalid user name or password');
    }
  }
}
