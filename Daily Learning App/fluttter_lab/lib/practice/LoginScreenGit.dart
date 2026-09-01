import 'package:flutter/material.dart';
 

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen1> {
  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  final GlobalKey<FormState> formKey =
      GlobalKey<FormState>();

  bool obscurePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Login Successful 🎉'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 30,
            ),

            child: Form(
              key: formKey,

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  // LOGO
                  Center(
                    child: Container(
                      height: 85,
                      width: 85,

                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(25),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.deepPurple
                                .withValues(alpha: 0.25),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),

                      child: const Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                        size: 42,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // TITLE
                  const Text(
                    'Welcome Back 👋',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'Login to continue to your account',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const SizedBox(height: 35),

                  // EMAIL LABEL
                  const Text(
                    'Email Address',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // EMAIL
                  TextFormField(
                    controller: emailController,

                    keyboardType:
                        TextInputType.emailAddress,

                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      prefixIcon:
                          const Icon(Icons.email_outlined),

                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(14),

                        borderSide: BorderSide.none,
                      ),

                      enabledBorder:
                          OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(14),

                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),

                      focusedBorder:
                          OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(14),

                        borderSide: const BorderSide(
                          color: Colors.deepPurple,
                          width: 2,
                        ),
                      ),
                    ),

                    validator: (value) {
                      if (value == null ||
                          value.trim().isEmpty) {
                        return 'Please enter your email';
                      }

                      if (!value.contains('@')) {
                        return 'Enter a valid email';
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 22),

                  // PASSWORD LABEL
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // PASSWORD
                  TextFormField(
                    controller: passwordController,

                    obscureText: obscurePassword,

                    decoration: InputDecoration(
                      hintText: 'Enter your password',

                      prefixIcon:
                          const Icon(Icons.lock_outline),

                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscurePassword =
                                !obscurePassword;
                          });
                        },

                        icon: Icon(
                          obscurePassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                        ),
                      ),

                      filled: true,
                      fillColor: Colors.white,

                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(14),

                        borderSide: BorderSide.none,
                      ),

                      enabledBorder:
                          OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(14),

                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),

                      focusedBorder:
                          OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(14),

                        borderSide: const BorderSide(
                          color: Colors.deepPurple,
                          width: 2,
                        ),
                      ),
                    ),

                    validator: (value) {
                      if (value == null ||
                          value.isEmpty) {
                        return 'Please enter your password';
                      }

                      if (value.length < 6) {
                        return 'Password must be 6+ characters';
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 12),

                  // FORGOT PASSWORD
                  Align(
                    alignment: Alignment.centerRight,

                    child: TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Forgot Password clicked',
                            ),
                          ),
                        );
                      },

                      child: const Text(
                        'Forgot Password?',
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  // LOGIN BUTTON
                  SizedBox(
                    width: double.infinity,
                    height: 55,

                    child: ElevatedButton(
                      onPressed: login,

                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.deepPurple,

                        foregroundColor: Colors.white,

                        elevation: 3,

                        shape:
                            RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(14),
                        ),
                      ),

                      child: const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  // DIVIDER
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),

                        child: Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ),

                      Expanded(
                        child: Divider(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // GOOGLE BUTTON
                  SizedBox(
                    width: double.infinity,
                    height: 52,

                    child: OutlinedButton.icon(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Google Login clicked',
                            ),
                          ),
                        );
                      },

                      icon: const Icon(
                        Icons.g_mobiledata,
                        size: 30,
                      ),

                      label: const Text(
                        'Continue with Google',
                      ),

                      style:
                          OutlinedButton.styleFrom(
                        foregroundColor:
                            Colors.grey.shade800,

                        backgroundColor: Colors.white,

                        side: BorderSide(
                          color: Colors.grey.shade300,
                        ),

                        shape:
                            RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // SIGN UP
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,

                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),

                      TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Sign Up clicked',
                              ),
                            ),
                          );
                        },

                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}