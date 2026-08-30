import 'package:flutter/material.dart';

class Budgetplannerscreen extends StatefulWidget {
  const Budgetplannerscreen({super.key});

  @override
  State<Budgetplannerscreen> createState() => _BudgetplannerscreenState();
}

class _BudgetplannerscreenState extends State<Budgetplannerscreen> {
  double budget = 25000;

  String? budgetType = "Monthly";

  bool food = false;
  bool transport = false;
  bool shopping = false;
  bool entertainment = false;

  double foodBudget = 8000;
  double transportBudget = 3000;
  double shoppingBudget = 5000;
  double entertainmentBudget = 2000;

  bool autoSave = false;

  @override
  Widget build(BuildContext context) {
    double totalAllocated = 0;

    if (food) {
      totalAllocated += foodBudget;
    }

    if (transport) {
      totalAllocated += transportBudget;
    }

    if (shopping) {
      totalAllocated += shoppingBudget;
    }

    if (entertainment) {
      totalAllocated += entertainmentBudget;
    }

    double remainingBudget = budget - totalAllocated;

    List<String> selectedCategories = [];
    if (food) {
      selectedCategories.add("Food");
    }
    if (transport) {
      selectedCategories.add("Transport");
    }
    if (shopping) {
      selectedCategories.add("Shopping");
    }
    if (entertainment) {
      selectedCategories.add("Entertainment");
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),

      appBar: AppBar(title: const Text("Budget Planner"), centerTitle: true),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. BUDGET CARD
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Monthly Budget",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 15),

                      Text(
                        "₹ ${budget.toInt()}",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Slider(
                        min: 500,
                        max: 50000,
                        value: budget,

                        onChanged: (value) {
                          setState(() {
                            budget = value;
                          });
                        },
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [Text("₹500"), Text("₹50,000")],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // 2. BUDGET TYPE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Budget Type",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),

                      child: Row(
                        children: [
                          Radio<String>(
                            value: "Monthly",
                            groupValue: budgetType,

                            onChanged: (value) {
                              setState(() {
                                budgetType = value;
                              });
                            },
                          ),

                          const Text("Monthly"),

                          const SizedBox(width: 15),

                          Radio<String>(
                            value: "Weekly",
                            groupValue: budgetType,

                            onChanged: (value) {
                              setState(() {
                                budgetType = value;
                              });
                            },
                          ),

                          const Text("Weekly"),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // 3. SPENDING CATEGORIES
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Spending Categories",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      width: double.infinity,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),

                      child: Column(
                        children: [
                          // Food
                          CheckboxListTile(
                            title: const Text("Food"),
                            subtitle: Text("₹ ${foodBudget.toInt()}"),

                            value: food,

                            onChanged: (value) {
                              setState(() {
                                food = value!;
                              });
                            },
                          ),

                          // Transport
                          CheckboxListTile(
                            title: const Text("Transport"),
                            subtitle: Text("₹ ${transportBudget.toInt()}"),

                            value: transport,

                            onChanged: (value) {
                              setState(() {
                                transport = value!;
                              });
                            },
                          ),

                          // Shopping
                          CheckboxListTile(
                            title: const Text("Shopping"),
                            subtitle: Text("₹ ${shoppingBudget.toInt()}"),

                            value: shopping,

                            onChanged: (value) {
                              setState(() {
                                shopping = value!;
                              });
                            },
                          ),

                          // Entertainment
                          CheckboxListTile(
                            title: const Text("Entertainment"),
                            subtitle: Text("₹ ${entertainmentBudget.toInt()}"),

                            value: entertainment,

                            onChanged: (value) {
                              setState(() {
                                entertainment = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 25),

                // 4. SETTINGS
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      padding: const EdgeInsets.all(18),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),

                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                const Text(
                                  "Auto Save Budget",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                const SizedBox(height: 5),

                                Text(
                                  autoSave
                                      ? "Your changes will be saved automatically"
                                      : "Automatically save your budget changes",

                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Switch(
                            value: autoSave,

                            onChanged: (value) {
                              setState(() {
                                autoSave = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),

                // 5. BUDGET SUMMARY
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Budget Summary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.08),
                            blurRadius: 12,
                            offset: const Offset(0, 4),
                          ),
                        ],
                      ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Total Budget
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(
                                "Total Budget",
                                style: TextStyle(color: Colors.grey.shade600),
                              ),

                              Text(
                                "₹ ${budget.toInt()}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          // Budget Type
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(
                                "Budget Type",
                                style: TextStyle(color: Colors.grey.shade600),
                              ),

                              Text(
                                budgetType ?? "Not Selected",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          // Selected Categories
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(color: Colors.grey.shade600),
                              ),

                              const SizedBox(width: 20),

                              Expanded(
                                child: Text(
                                  selectedCategories.isEmpty
                                      ? "None selected"
                                      : selectedCategories.join(", "),

                                  textAlign: TextAlign.end,

                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          // Allocated
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              Text(
                                "Allocated",
                                style: TextStyle(color: Colors.grey.shade600),
                              ),

                              Text(
                                "₹ ${totalAllocated.toInt()}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 15),

                          const Divider(),

                          const SizedBox(height: 15),

                          // Remaining
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              const Text(
                                "Remaining",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                "₹ ${remainingBudget.toInt()}",

                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,

                                  color: remainingBudget >= 0
                                      ? Colors.green.shade700
                                      : Colors.red.shade700,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 15),

                          // Auto Save Status
                          Row(
                            children: [
                              Icon(
                                autoSave
                                    ? Icons.check_circle
                                    : Icons.info_outline,

                                size: 18,

                                color: autoSave ? Colors.green : Colors.red,
                              ),

                              const SizedBox(width: 8),

                              Text(
                                autoSave
                                    ? "Auto Save is ON"
                                    : "Auto Save is OFF",

                                style: TextStyle(
                                  fontSize: 13,
                                  color: autoSave
                                      ? Colors.green.shade700
                                      : Colors.red.shade700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}