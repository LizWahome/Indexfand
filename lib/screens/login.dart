import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:indexfand/screens/sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TapGestureRecognizer gestureRecognizer = TapGestureRecognizer();
  TextEditingController phonenumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final loginkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    phonenumberController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 28, 43),
        title: const Text("indexfand"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 0, 22, 39),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Positioned(
                    child: CircleAvatar(
                  backgroundImage: AssetImage("images/Capture.PNG"),
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset("images/welcome2.png"),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: phonenumberController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Phonenumber",
                          hintText: "Enter your phonenumber",
                          icon: const Icon(
                            Icons.phone,
                            color: Colors.black,
                          )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "password",
                          hintText: "Enter your password",
                          icon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Login")),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            RichText(
              text: TextSpan(text: "Not a member yet? ",  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                TextSpan(
                  text: "SignUp Now",
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: gestureRecognizer..onTap=() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignInScreen()));
                  }
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/indexfand.png"),
            ),
          ],
        ),
      ),
    );
  }
}
