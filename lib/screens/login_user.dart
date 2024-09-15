import 'package:flutter/material.dart';
import 'package:homework_homescreen_product/screens/homescreen.dart';
import 'package:homework_homescreen_product/screens/register_user.dart';

class LoginUser extends StatefulWidget {
  const LoginUser({super.key});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  bool ispassword = true;
  final txt = FocusNode();
  void togglePassword() {
    setState(() {
      ispassword = !ispassword;
      if (txt.hasPrimaryFocus) return;
      txt.canRequestFocus = false;
    });
  }

  TextEditingController controllerUsername = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login User'),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.fromLTRB(10, 30, 10, 30),
              child: Image.asset(
                'assets/images/defult.png',
                width: 100,
                height: 100,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: controllerUsername,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  prefixIcon: Icon(
                    Icons.person,
                    size: 32,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: controllerPassword,
                obscureText: ispassword,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Password',
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    size: 32,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                    child: GestureDetector(
                      onTap: togglePassword,
                      child: Icon(
                        ispassword
                            ? Icons.visibility_rounded
                            : Icons.visibility_off_rounded,
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 56,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {
                  String strName = controllerUsername.text;
                  String strPwd = controllerPassword.text;
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("UserName: $strName \nPassword: $strPwd"),
                    ),
                  );
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Homescreen()),
                      (route) => false);
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 56,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 40),
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Forget Password',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have an account?'),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterUser(),
                      ),
                    );
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
