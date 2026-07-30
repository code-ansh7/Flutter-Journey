import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoveApp());
}

// ======================================================
// APP ROOT
// ======================================================

class LoveApp extends StatelessWidget {
  const LoveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'For My Queen',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF090510),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF4D8D),
          brightness: Brightness.dark,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}

// ======================================================
// SPLASH SCREEN
// ======================================================

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    scaleAnimation = Tween<double>(
      begin: 0.7,
      end: 1.15,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    controller.repeat(reverse: true);

    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const MainScreen()),
      );
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF090510), Color(0xFF210A22), Color(0xFF3A102A)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: scaleAnimation,
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink.withValues(alpha: 0.10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withValues(alpha: 0.30),
                      blurRadius: 45,
                      spreadRadius: 8,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.favorite,
                  size: 85,
                  color: Color(0xFFFF4D8D),
                ),
              ),
            ),

            const SizedBox(height: 35),

            const Text(
              "For My Queen",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "A little world made with love ❤️",
              style: TextStyle(
                color: Colors.white.withValues(alpha: 0.65),
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 45),

            const SizedBox(
              width: 28,
              height: 28,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                color: Color(0xFFFF4D8D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// MAIN SCREEN
// ======================================================

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    LoveLetterPage(),
    ForeverQuestionPage(),
    ReasonsPage(),
    MemoriesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF150B19),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.4),
              blurRadius: 20,
            ),
          ],
        ),
        child: NavigationBar(
          backgroundColor: Colors.transparent,
          indicatorColor: const Color(0xFFFF4D8D).withValues(alpha: 0.18),
          selectedIndex: currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home, color: Color(0xFFFF4D8D)),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.mail_outline),
              selectedIcon: Icon(Icons.mail, color: Color(0xFFFF4D8D)),
              label: "Letter",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_outline),
              selectedIcon: Icon(Icons.favorite, color: Color(0xFFFF4D8D)),
              label: "Forever",
            ),
            NavigationDestination(
              icon: Icon(Icons.favorite_border),
              selectedIcon: Icon(Icons.favorite, color: Color(0xFFFF4D8D)),
              label: "Reasons",
            ),
            NavigationDestination(
              icon: Icon(Icons.photo_library_outlined),
              selectedIcon: Icon(Icons.photo_library, color: Color(0xFFFF4D8D)),
              label: "Memories",
            ),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// HOME PAGE
// ======================================================

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // CHANGE THIS DATE TO YOUR RELATIONSHIP START DATE
  final DateTime relationshipStartDate = DateTime(2024, 10, 9);

  int calculateDays() {
    return DateTime.now().difference(relationshipStartDate).inDays;
  }

  @override
  Widget build(BuildContext context) {
    final days = calculateDays();

    return AppBackground(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF4D8D).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Icon(Icons.favorite, color: Color(0xFFFF4D8D)),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "For My Queen",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Our little love universe",
                          style: TextStyle(fontSize: 12, color: Colors.white54),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.auto_awesome, color: Colors.amber),
                ],
              ),

              const SizedBox(height: 40),

              Center(
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFFFF4D8D).withValues(alpha: 0.10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFFFF4D8D).withValues(alpha: 0.22),
                        blurRadius: 55,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Color(0xFFFF4D8D),
                    size: 80,
                  ),
                ),
              ),

              const SizedBox(height: 35),

              const Center(
                child: Text(
                  "You & Me ❤️",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 8),

              const Center(
                child: Text(
                  "One story. Two hearts. Countless memories.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white60, fontSize: 14),
                ),
              ),

              const SizedBox(height: 35),

              PremiumCard(
                child: Column(
                  children: [
                    const Icon(
                      Icons.calendar_month_rounded,
                      color: Color(0xFFFF8AB5),
                      size: 35,
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Together For",
                      style: TextStyle(color: Colors.white60, fontSize: 14),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "$days Days",
                      style: const TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF8AB5),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "and counting... ♡",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 18),

              const PremiumCard(
                child: Row(
                  children: [
                    Icon(
                      Icons.format_quote_rounded,
                      color: Color(0xFFFF4D8D),
                      size: 40,
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Text(
                        "\"In a world full of temporary things, I want us to be permanent.\"",
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const MadeBy(),
            ],
          ),
        ),
      ),
    );
  }
}

// ======================================================
// LOVE LETTER
// ======================================================

class LoveLetterPage extends StatelessWidget {
  const LoveLetterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 30),
          child: Column(
            children: [
              const PageHeading(
                icon: Icons.mail_rounded,
                title: "A Letter For You",
                subtitle: "Words straight from my heart",
              ),

              const SizedBox(height: 25),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color(0xFFFF4D8D).withValues(alpha: 0.14),
                      const Color(0xFF7C3AED).withValues(alpha: 0.10),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(26),
                  border: Border.all(
                    color: const Color(0xFFFF4D8D).withValues(alpha: 0.25),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Queen, ❤️",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF8AB5),
                      ),
                    ),

                    SizedBox(height: 22),

                    Text(
                      "I don't know if words can ever explain how special you are to me.",
                      style: LetterStyle.style,
                    ),

                    SizedBox(height: 18),

                    Text(
                      "You somehow make ordinary days feel special. Every conversation, every laugh and every little moment with you becomes a memory I want to keep.",
                      style: LetterStyle.style,
                    ),

                    SizedBox(height: 18),

                    Text(
                      "No matter where life takes us, I hope we continue supporting each other, growing together and creating thousands of beautiful memories.",
                      style: LetterStyle.style,
                    ),

                    SizedBox(height: 18),

                    Text(
                      "Thank you for being a beautiful part of my life. ❤️",
                      style: LetterStyle.style,
                    ),

                    SizedBox(height: 28),

                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Forever yours ♡",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFF8AB5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const MadeBy(),
            ],
          ),
        ),
      ),
    );
  }
}

class LetterStyle {
  static const TextStyle style = TextStyle(
    fontSize: 16,
    height: 1.7,
    color: Colors.white70,
  );
}

// ======================================================
// REASONS PAGE
// ======================================================

class ReasonsPage extends StatefulWidget {
  const ReasonsPage({super.key});

  @override
  State<ReasonsPage> createState() => _ReasonsPageState();
}

class _ReasonsPageState extends State<ReasonsPage> {
  final List<String> reasons = [
    "Your smile can instantly make my day better.",
    "You understand me in ways most people don't.",
    "Talking to you makes ordinary moments special.",
    "You motivate me to become a better version of myself.",
    "Your happiness genuinely matters to me.",
    "I love the little things that make you uniquely you.",
    "You make my difficult days feel lighter.",
    "Every memory with you feels worth keeping.",
    "You are one of my favourite reasons to smile.",
    "Life simply feels more beautiful with you in it.",
  ];

  int currentReason = 0;

  void randomReason() {
    if (reasons.length <= 1) return;

    int newIndex;

    do {
      newIndex = Random().nextInt(reasons.length);
    } while (newIndex == currentReason);

    setState(() {
      currentReason = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 30),
          child: Column(
            children: [
              const PageHeading(
                icon: Icons.favorite_rounded,
                title: "Why You?",
                subtitle: "A few of the countless reasons",
              ),

              const SizedBox(height: 35),

              AnimatedSwitcher(
                duration: const Duration(milliseconds: 400),
                transitionBuilder: (child, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: ScaleTransition(scale: animation, child: child),
                  );
                },
                child: Container(
                  key: ValueKey(currentReason),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 45,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFFFF4D8D).withValues(alpha: 0.18),
                        const Color(0xFF8B5CF6).withValues(alpha: 0.10),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0xFFFF4D8D).withValues(alpha: 0.30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color(
                            0xFFFF4D8D,
                          ).withValues(alpha: 0.15),
                        ),
                        child: const Icon(
                          Icons.favorite,
                          size: 55,
                          color: Color(0xFFFF4D8D),
                        ),
                      ),

                      const SizedBox(height: 30),

                      Text(
                        reasons[currentReason],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 22,
                          height: 1.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: FilledButton.icon(
                  onPressed: randomReason,
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFFFF4D8D),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  icon: const Icon(Icons.shuffle_rounded),
                  label: const Text(
                    "Another Reason",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 35),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Some More Reasons 💕",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 15),

              ...List.generate(4, (index) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(17),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.05),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.07),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        size: 19,
                        color: Color(0xFFFF6F9F),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Text(
                          reasons[index],
                          style: const TextStyle(
                            color: Colors.white70,
                            height: 1.4,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),

              const SizedBox(height: 20),

              const MadeBy(),
            ],
          ),
        ),
      ),
    );
  }
}
// ======================================================
// FOREVER QUESTION PAGE
// ======================================================

class ForeverQuestionPage extends StatefulWidget {
  const ForeverQuestionPage({super.key});

  @override
  State<ForeverQuestionPage> createState() => _ForeverQuestionPageState();
}

class _ForeverQuestionPageState extends State<ForeverQuestionPage> {
  double noX = 0;
  double noY = 0;

  final Random random = Random();

  void moveNoButton() {
    setState(() {
      noX = random.nextDouble() * 180 - 90;
      noY = random.nextDouble() * 220 - 110;
    });
  }

  void showYesDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF210A22),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          title: const Column(
            children: [
              Icon(Icons.favorite, color: Color(0xFFFF4D8D), size: 70),
              SizedBox(height: 15),
              Text(
                "YAYYYY! ❤️",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          content: const Text(
            "I knew it! 😌❤️\n\n"
            "Ab tum officially mere saath forever ke liye stuck ho! 😂💕",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17, height: 1.5, color: Colors.white70),
          ),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFFFF4D8D),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Love You Too ❤️"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            children: [
              const PageHeading(
                icon: Icons.favorite_rounded,
                title: "One Question...",
                subtitle: "Choose carefully 😌",
              ),

              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, size: 90, color: Color(0xFFFF4D8D)),

                    SizedBox(height: 30),

                    Text(
                      "Will You Stay\nWith Me Forever? ❤️",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        height: 1.3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 12),

                    Text(
                      "There is only one correct answer 😏",
                      style: TextStyle(color: Colors.white54),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 190,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 25,
                      top: 60,
                      child: SizedBox(
                        width: 125,
                        height: 55,
                        child: FilledButton.icon(
                          onPressed: showYesDialog,
                          style: FilledButton.styleFrom(
                            backgroundColor: const Color(0xFFFF4D8D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          icon: const Icon(Icons.favorite),
                          label: const Text(
                            "YES ❤️",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),

                    AnimatedContainer(
                      duration: const Duration(milliseconds: 180),
                      curve: Curves.easeOut,
                      transform: Matrix4.translationValues(noX, noY, 0),
                      child: Align(
                        alignment: const Alignment(0.65, 0),
                        child: SizedBox(
                          width: 110,
                          height: 50,
                          child: OutlinedButton(
                            onPressed: moveNoButton,
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white70,
                              side: const BorderSide(color: Colors.white24),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              "NO 😜",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              const MadeBy(),
            ],
          ),
        ),
      ),
    );
  }
}
// ======================================================
// MEMORIES
// ======================================================

class MemoriesPage extends StatelessWidget {
  const MemoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final memories = [
      (
        Icons.chat_bubble_rounded,
        "First Conversations",
        "Where our story slowly started.",
      ),
      (
        Icons.sentiment_very_satisfied_rounded,
        "Our Laughs",
        "The moments where nothing else mattered.",
      ),
      (
        Icons.favorite_rounded,
        "Special Moments",
        "Small moments that became big memories.",
      ),
      (
        Icons.auto_awesome_rounded,
        "Future Memories",
        "The best chapters are still waiting.",
      ),
    ];

    return AppBackground(
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 30),
          child: Column(
            children: [
              const PageHeading(
                icon: Icons.photo_library_rounded,
                title: "Our Memories",
                subtitle: "Little pieces of our story",
              ),

              const SizedBox(height: 25),

              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: memories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.88,
                ),
                itemBuilder: (context, index) {
                  final memory = memories[index];

                  return Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          const Color(0xFFFF4D8D).withValues(alpha: 0.13),
                          Colors.white.withValues(alpha: 0.035),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.08),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(
                              0xFFFF4D8D,
                            ).withValues(alpha: 0.13),
                          ),
                          child: Icon(
                            memory.$1,
                            color: const Color(0xFFFF7EAD),
                            size: 35,
                          ),
                        ),

                        const SizedBox(height: 18),

                        Text(
                          memory.$2,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          memory.$3,
                          textAlign: TextAlign.center,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white54,
                            fontSize: 11,
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),

              const SizedBox(height: 25),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(22),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white.withValues(alpha: 0.04),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.07),
                  ),
                ),
                child: const Column(
                  children: [
                    Icon(
                      Icons.add_a_photo_outlined,
                      color: Color(0xFFFF8AB5),
                      size: 40,
                    ),
                    SizedBox(height: 12),
                    Text(
                      "More memories coming soon...",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Because our story isn't finished yet ❤️",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const MadeBy(),
            ],
          ),
        ),
      ),
    );
  }
}

// ======================================================
// REUSABLE WIDGETS
// ======================================================

class AppBackground extends StatelessWidget {
  final Widget child;

  const AppBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF08040D), Color(0xFF160A18), Color(0xFF090510)],
        ),
      ),
      child: child,
    );
  }
}

class PremiumCard extends StatelessWidget {
  final Widget child;

  const PremiumCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.055),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withValues(alpha: 0.08)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.18),
            blurRadius: 20,
          ),
        ],
      ),
      child: child,
    );
  }
}

class PageHeading extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const PageHeading({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFFF4D8D).withValues(alpha: 0.13),
          ),
          child: Icon(icon, color: const Color(0xFFFF6F9F), size: 32),
        ),
        const SizedBox(height: 13),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white54, fontSize: 13),
        ),
      ],
    );
  }
}

class MadeBy extends StatelessWidget {
  const MadeBy({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(width: 45, height: 1, color: Colors.white12),
          const SizedBox(height: 13),
          const Text(
            "Made with ❤️ by Ansh Rastogi",
            style: TextStyle(
              color: Colors.white38,
              fontSize: 12,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
