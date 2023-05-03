import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
    required this.email,
    required this.Password,
  }) : super(key: key);
  String email;
  String Password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Сиздин email почтаныз=>$email',
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Сиздин email паролунуз=>$Password',
            style: const TextStyle(fontSize: 20, color: Colors.green),
          )
        ]),
      ),
    );
  }
}
