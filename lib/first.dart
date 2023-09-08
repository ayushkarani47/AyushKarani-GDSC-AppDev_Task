import 'package:flutter/material.dart';
import 'package:gdsc_app/login.dart';
import 'package:gdsc_app/register.dart';

class MyFirst extends StatelessWidget {
  const MyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 0),
              child: Image.asset(
                'images/gdsc_edited.png',
              ),
            ),
            Center(
              child: Text(
                'Welcome to App Dev',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
              child: Text('Login'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
