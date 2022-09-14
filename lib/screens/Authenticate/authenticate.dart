import 'package:auth_revision/screens/Authenticate/signup_screen.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'login_screen.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    void toggleLogin() {
      setState(() {
        isLogin = !isLogin;
      });
    }

    if (isLogin) {
      return LoginScreen(
        toggleView: toggleLogin,
      );
    } else {
      return RegisterScreen(
        toggleView: toggleLogin,
      );
    }
  }
}
