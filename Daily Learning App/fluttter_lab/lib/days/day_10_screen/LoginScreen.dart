import 'package:flutter/material.dart';
import 'package:fluttter_lab/days/day_10_screen/GreetScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool hidden = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String enteredEmail = "";
  String enteredPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Row(children: [Text("Login Form"), Spacer(), Text("Day-10")]),
      ),

      body: Center(
        child: Container(
          width: 320,
          height: 320,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.grey.shade800,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.cyanAccent,
                blurRadius: 22,
                spreadRadius: 7,
                offset: Offset(0, 4),
              ),
            ],
            border: Border.all(color: Colors.cyanAccent, width: 1),
          ),

          child: Form(
            key: formKey,
            child: Column(
              children: [
                SizedBox(height: 10),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email is required";
                    } else if (!value.contains("@")) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),
                    hintText: "Enter your email...",
                    prefixIcon: Icon(Icons.email),
                  ),
                ),

                SizedBox(height: 18),

                TextFormField(
                  obscureText: hidden,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Password is required";
                    } else if ((value.length < 8)) {
                      return "Password must be at least 8 characters";
                    } else {
                      return null;
                    }
                  },

                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          hidden = !hidden;
                        });
                      },
                      icon: Icon(
                        hidden ? Icons.visibility : Icons.visibility_off,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade300),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.cyanAccent,
                        width: 2,
                      ),
                    ),

                    hintText: "Enter your Password...",
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),

                SizedBox(height: 20),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent,
                    foregroundColor: Colors.black,
                    minimumSize: Size(220, 48),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      enteredEmail = emailController.text;
                      enteredPassword = passwordController.text;
                      print("$enteredEmail\n$enteredPassword");
                      bool success =
                          enteredEmail == "ansh@gmail.com" &&
                          enteredPassword == "anshrastogi";

                      if (success) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Login Successful",
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        );
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Greetscreen(),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "Invalid User!",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "Please fix the errors",
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      );
                    }
                  },
                  child: Text("Login"),
                ),

                SizedBox(height: 12),

                Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
