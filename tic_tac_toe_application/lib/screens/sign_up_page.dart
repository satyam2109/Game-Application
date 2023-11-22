import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tic_tac_toe_application/screens/home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 118, 75, 237),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/Login.jpg", fit: BoxFit.cover),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                      color: Colors.white),
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == "" || value == null || value == " ") {
                        return "Email is Required!";
                      }
                    },
                    decoration: const InputDecoration(
                        fillColor: Colors.white,
                        hintText: "Email",
                        contentPadding: EdgeInsets.only(left: 20)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                      color: Colors.white),
                  child: TextFormField(
                    controller: passController,
                    validator: (value) {
                      if (value == "" || value == null || value == " ") {
                        return "Password is Required!";
                      }
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Password",
                        contentPadding: EdgeInsets.only(left: 20)),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text("Logged In!")));

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(top: 30),
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 54, 2, 118),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                )
                //  TextButton(onPressed: () {}, child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
