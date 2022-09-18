import 'package:e_shop_app/components.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Login',
            style: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(
              height: 73.0,
            ),
            buildTextField(label: 'Email'),
            SizedBox(
              height: 8,
            ),
            buildTextField( label: 'Password'),
            SizedBox(
              height:16,
            ),
            TextButton(onPressed: (){},
                child: Text('Forgot your password?')),
            SizedBox(
              height:32,
            ),
            buildButton(label: 'LOGIN'),
            SizedBox(
              height: 194.0,
            ),
            Center(
              child: Text('Or login with social account'),
            ),
            SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildIconButton(img: 'lib/images/Google.png'),
                 SizedBox(
                   width: 16.0,
                 ),
                buildIconButton(img: 'lib/images/Facebook.png')
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }
}
