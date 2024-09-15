import 'package:flutter/material.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  @override
  bool ispassword = true;
  final txt = FocusNode();
  void togglePassword() {
    setState(() {
      ispassword = !ispassword;
      if (txt.hasPrimaryFocus) return;
      txt.canRequestFocus = false;
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign Up User'),
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
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full Name',
                  prefixIcon: Icon(
                    Icons.person,
                    size: 32,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'UserName',
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
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                obscureText: ispassword,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: 'Confirm Password',
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
                onPressed: () {},
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
