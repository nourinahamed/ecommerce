import 'package:flutter/material.dart';
import 'package:loginui/profile/my_account.dart';
import 'package:loginui/register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  TextStyle myStyle = const TextStyle(
      fontSize: 30, fontWeight: FontWeight.w400, color: Colors.lightBlue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              textAlign: TextAlign.left,
              style: myStyle,
            ),

            // Container(
            //   padding: const EdgeInsets.only(right: 210, top: 150),
            //   child: Text(
            //     'Login',
            //     textAlign: TextAlign.left,
            //     style: myStyle,
            //   ),
            // ),
            Container(
              padding: const EdgeInsets.only(right: 60),
              child: const Text(
                'Please login to your account',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(height: 30),
            TextField(
                controller: _emailcontroller,
                decoration: const InputDecoration(
                  hintText: 'Email',
                )),
            TextField(
              controller: _passwordcontroller,
              decoration: InputDecoration(
                hintText: 'Password',
                // suffixText: 'Forgott password',
                suffix: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot Password'),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyAccount()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    fixedSize: const Size(300, 50)),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white),
                )),
            const SizedBox(
              height: 30,
            ),
            Row(children: const [
              Expanded(child: Divider()),
              Text(
                "OR",
                style: TextStyle(color: Colors.grey),
              ),
              Expanded(child: Divider()),
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    'assets/images/twitter.png',
                    width: 40,
                    height: 40,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont have an account? '),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterScreen(),
                          ));
                    },
                    child: const Text('Register',
                        style: TextStyle(
                          color: Colors.lightBlue,
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
