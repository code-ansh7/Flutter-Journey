import 'package:flutter/material.dart';

class Modernuicalculator extends StatefulWidget {
  const Modernuicalculator({super.key});

  @override
  State<Modernuicalculator> createState() => _ModernuicalculatorState();
}

class _ModernuicalculatorState extends State<Modernuicalculator> {
  String input = "";
  String result = "";

  //Calculations
  void calculateResult() {
    // Addition
    if (input.contains("+")) {
      List<String> parts = input.split("+");

      double firstNumber = double.parse(parts[0]);
      double secondNumber = double.parse(parts[1]);

      double answer = firstNumber + secondNumber;

      result = answer.toString();
    }
    // Subtraction
    else if (input.contains("-")) {
      List<String> parts = input.split("-");

      double firstNumber = double.parse(parts[0]);
      double secondNumber = double.parse(parts[1]);

      double answer = firstNumber - secondNumber;

      result = answer.toString();
    }
    // Multiplication
    else if (input.contains("×")) {
      List<String> parts = input.split("×");

      double firstNumber = double.parse(parts[0]);
      double secondNumber = double.parse(parts[1]);

      double answer = firstNumber * secondNumber;

      result = answer.toString();
    }
    // Division
    else if (input.contains("÷")) {
      List<String> parts = input.split("÷");

      double firstNumber = double.parse(parts[0]);
      double secondNumber = double.parse(parts[1]);

      if (secondNumber == 0) {
        result = "Cannot divide by 0";
      } else {
        double answer = firstNumber / secondNumber;

        result = answer.toString();
      }
    }
  }

  // Reusable Calculator Button
  Widget calculatorButton(String data, Color color, Color textColor) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: () {
            setState(() {
              if (data == "AC") {
                input = "";
                result = "";
              } else if (data == "=") {
                calculateResult();
              } else {
                input = input + data;
              }
            });
          },
          child: Container(
            margin: const EdgeInsets.all(5),
            height: 65,

            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  blurRadius: 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),

            child: Center(
              child: Text(
                data,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECEFF1),

      body: SafeArea(
        child: Column(
          children: [
            //Header
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Text(
                "Calculator",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    //Display
                    Expanded(
                      child: Container(
                        width: double.infinity,

                        padding: const EdgeInsets.all(24),

                        decoration: BoxDecoration(
                          color: const Color(0xff1E1E1E),

                          borderRadius: BorderRadius.circular(28),

                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            ),
                          ],
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,

                          children: [
                            const Spacer(),

                            // Expression
                            Text(
                              input,
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white54,
                              ),
                            ),

                            const SizedBox(height: 8),

                            // Answer
                            Text(
                              result,
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 14),

                    // ROW 1
                    Row(
                      children: [
                        calculatorButton(
                          "AC",
                          const Color(0xffFFCDD2),
                          Colors.red.shade700,
                        ),

                        calculatorButton(
                          "±",
                          const Color(0xffFFE0B2),
                          Colors.deepOrange.shade700,
                        ),

                        calculatorButton(
                          "%",
                          const Color(0xffCFD8DC),
                          Colors.black87,
                        ),

                        calculatorButton(
                          "÷",
                          const Color(0xff90CAF9),
                          Colors.blue.shade900,
                        ),
                      ],
                    ),

                    // ROW 2
                    Row(
                      children: [
                        calculatorButton("7", Colors.white, Colors.black87),

                        calculatorButton("8", Colors.white, Colors.black87),

                        calculatorButton("9", Colors.white, Colors.black87),

                        calculatorButton(
                          "×",
                          const Color(0xff90CAF9),
                          Colors.blue.shade900,
                        ),
                      ],
                    ),

                    // ROW 3
                    Row(
                      children: [
                        calculatorButton("4", Colors.white, Colors.black87),

                        calculatorButton("5", Colors.white, Colors.black87),

                        calculatorButton("6", Colors.white, Colors.black87),

                        calculatorButton(
                          "-",
                          const Color(0xff90CAF9),
                          Colors.blue.shade900,
                        ),
                      ],
                    ),

                    // ROW 4
                    Row(
                      children: [
                        calculatorButton("1", Colors.white, Colors.black87),

                        calculatorButton("2", Colors.white, Colors.black87),

                        calculatorButton("3", Colors.white, Colors.black87),

                        calculatorButton("+", const Color(0xff90CAF9),  Colors.blue.shade900,),
                      ],
                    ),

                    // ROW 5
                    Row(
                      children: [
                        calculatorButton("0", Colors.white, Colors.black87),

                        calculatorButton("00", Colors.white, Colors.black87),

                        calculatorButton(".", Colors.white, Colors.black87),

                        calculatorButton(
                          "=",
                          const Color(0xff81C784),
                          Colors.green.shade900,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}