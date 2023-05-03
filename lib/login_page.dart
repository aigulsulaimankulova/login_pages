import 'package:flutter/material.dart';
import 'package:login_pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String Password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login page'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (String value) {
                email = value;
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  hintText: 'Email жазуу'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (String value) {
                Password = value;
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password жазуу'),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  if (email == '' && Password == '') {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Логин же Пароль жазыныз'),
                    ));
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(
                          email: email,
                          Password: Password,
                        ),
                      ),
                    );
                  }
                },
                child: const Text(
                  'send',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
