import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:indexfand/screens/login.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TapGestureRecognizer gestureRecognizer = TapGestureRecognizer();
  final signInKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 28, 43),
        title: const Text(
          "indexfand",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("images/sign_in_indexfand.png"),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: signInKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: "Full Name",
                        hintText: "Enter your full name",
                        icon: const Icon(Icons.person, color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: "Phone Number",
                        hintText: "Enter your phone number",
                        icon: const Icon(Icons.call, color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        labelText: "Email",
                        hintText: "Enter your Email",
                        icon: const Icon(Icons.email, color: Colors.black)),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("Next"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          RichText(
              text: TextSpan(text: "Already a member? ",  style: const TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                TextSpan(
                  text: "Login",
                  style: const TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: gestureRecognizer..onTap=() {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  }
                ),
              ]),
            ),
          Image.asset("images/indexfand.png"),
        ],
      ),
    );
  }
}
