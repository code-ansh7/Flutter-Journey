import 'dart:ui';

import 'package:flutter/material.dart';
 

class GlassLoginScreen extends StatefulWidget {
  const GlassLoginScreen({super.key});

  @override
  State<GlassLoginScreen> createState() => _GlassLoginScreenState();
}

class _GlassLoginScreenState extends State<GlassLoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool hidePassword = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void login() {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter email and password'),
        ),
      );
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Login Successful 🎉'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // =========================
          // BACKGROUND
          // =========================

          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFF0F2027),
                  Color(0xFF203A43),
                  Color(0xFF2C5364),
                ],
              ),
            ),
          ),

          // =========================
          // GLOWING CIRCLES
          // =========================

          Positioned(
            top: -80,
            left: -60,
            child: _glowCircle(
              size: 220,
              color: Colors.cyanAccent,
            ),
          ),

          Positioned(
            right: -70,
            top: 180,
            child: _glowCircle(
              size: 190,
              color: Colors.purpleAccent,
            ),
          ),

          Positioned(
            bottom: -80,
            left: 80,
            child: _glowCircle(
              size: 200,
              color: Colors.blueAccent,
            ),
          ),

          // =========================
          // GLASS LOGIN CARD
          // =========================

          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),

                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 18,
                    sigmaY: 18,
                  ),

                  child: Container(
                    width: 390,
                    padding: const EdgeInsets.all(28),

                    decoration: BoxDecoration(
                      color: Colors.white.withValues(
                        alpha: 0.10,
                      ),

                      borderRadius: BorderRadius.circular(30),

                      border: Border.all(
                        color: Colors.white.withValues(
                          alpha: 0.25,
                        ),
                        width: 1.2,
                      ),

                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(
                            alpha: 0.25,
                          ),
                          blurRadius: 30,
                          offset: const Offset(0, 15),
                        ),
                      ],
                    ),

                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        // =========================
                        // LOGO
                        // =========================

                        Center(
                          child: Container(
                            height: 80,
                            width: 80,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                              color: Colors.white.withValues(
                                alpha: 0.12,
                              ),

                              border: Border.all(
                                color: Colors.white.withValues(
                                  alpha: 0.3,
                                ),
                              ),
                            ),

                            child: const Icon(
                              Icons.lock_outline_rounded,
                              color: Colors.white,
                              size: 38,
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // =========================
                        // TITLE
                        // =========================

                        const Center(
                          child: Text(
                            'Welcome Ansh',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(height: 8),

                        Center(
                          child: Text(
                            'Login to continue your journey',
                            style: TextStyle(
                              color: Colors.white.withValues(
                                alpha: 0.65,
                              ),
                              fontSize: 14,
                            ),
                          ),
                        ),

                        const SizedBox(height: 35),

                        // =========================
                        // EMAIL
                        // =========================

                        const Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 8),

                        _glassTextField(
                          controller: emailController,
                          hintText: 'Enter your email',
                          icon: Icons.email_outlined,
                        ),

                        const SizedBox(height: 20),

                        // =========================
                        // PASSWORD
                        // =========================

                        const Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 8),

                        _glassTextField(
                          controller: passwordController,
                          hintText: 'Enter your password',
                          icon: Icons.lock_outline_rounded,
                          obscureText: hidePassword,

                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },

                            icon: Icon(
                              hidePassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,

                              color: Colors.white70,
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // =========================
                        // FORGOT PASSWORD
                        // =========================

                        Align(
                          alignment: Alignment.centerRight,

                          child: TextButton(
                            onPressed: () {},

                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Colors.cyanAccent,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 15),

                        // =========================
                        // LOGIN BUTTON
                        // =========================

                        SizedBox(
                          width: double.infinity,
                          height: 55,

                          child: ElevatedButton(
                            onPressed: login,

                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.cyanAccent,

                              foregroundColor:
                                  Colors.black,

                              elevation: 8,

                              shadowColor:
                                  Colors.cyanAccent
                                      .withValues(
                                alpha: 0.35,
                              ),

                              shape:
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(16),
                              ),
                            ),

                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // =========================
                        // OR
                        // =========================

                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Colors.white
                                    .withValues(
                                  alpha: 0.2,
                                ),
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
                                  color: Colors.white
                                      .withValues(
                                    alpha: 0.55,
                                  ),
                                ),
                              ),
                            ),

                            Expanded(
                              child: Divider(
                                color: Colors.white
                                    .withValues(
                                  alpha: 0.2,
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 25),

                        // =========================
                        // GOOGLE BUTTON
                        // =========================

                        SizedBox(
                          width: double.infinity,
                          height: 52,

                          child: OutlinedButton.icon(
                            onPressed: () {},

                            icon: const Icon(
                              Icons.g_mobiledata_rounded,
                              size: 30,
                              color: Colors.white,
                            ),

                            label: const Text(
                              'Continue with Google',
                            ),

                            style:
                                OutlinedButton.styleFrom(
                              foregroundColor:
                                  Colors.white,

                              backgroundColor:
                                  Colors.white
                                      .withValues(
                                alpha: 0.08,
                              ),

                              side: BorderSide(
                                color: Colors.white
                                    .withValues(
                                  alpha: 0.25,
                                ),
                              ),

                              shape:
                                  RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // =========================
                        // SIGN UP
                        // =========================

                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,

                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Colors.white
                                    .withValues(
                                  alpha: 0.6,
                                ),
                              ),
                            ),

                            TextButton(
                              onPressed: () {},

                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.cyanAccent,
                                  fontWeight:
                                      FontWeight.bold,
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
          ),
        ],
      ),
    );
  }

  // =========================
  // GLASS TEXT FIELD
  // =========================

  Widget _glassTextField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,

      style: const TextStyle(
        color: Colors.white,
      ),

      decoration: InputDecoration(
        hintText: hintText,

        hintStyle: TextStyle(
          color: Colors.white.withValues(
            alpha: 0.45,
          ),
        ),

        prefixIcon: Icon(
          icon,
          color: Colors.white70,
        ),

        suffixIcon: suffixIcon,

        filled: true,

        fillColor: Colors.white.withValues(
          alpha: 0.08,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),

          borderSide: BorderSide(
            color: Colors.white.withValues(
              alpha: 0.18,
            ),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),

          borderSide: const BorderSide(
            color: Colors.cyanAccent,
            width: 1.5,
          ),
        ),
      ),
    );
  }

  // =========================
  // GLOW CIRCLE
  // =========================

  Widget _glowCircle({
    required double size,
    required Color color,
  }) {
    return Container(
      height: size,
      width: size,

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        color: color.withValues(
          alpha: 0.15,
        ),

        boxShadow: [
          BoxShadow(
            color: color.withValues(
              alpha: 0.25,
            ),
            blurRadius: 100,
            spreadRadius: 30,
          ),
        ],
      ),
    );
  }
}