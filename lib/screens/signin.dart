import 'package:flutter/material.dart';
import 'package:indexfand/screens/login.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
        backgroundColor: Color.fromARGB(255, 9, 28, 43),
        title: const Text("indexfand"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: phonenumberController,
                    decoration: const InputDecoration(
                        labelText: "Phonenumber",
                        hintText: "Enter your phonenumber",
                        icon: Icon(
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
                    decoration: const InputDecoration(
                        labelText: "password",
                        hintText: "Enter your password",
                        icon: Icon(
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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: const Text("Login")),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("images/indexfand.png"),
            )
          ],
        ),
      ),
    );
  }
}
