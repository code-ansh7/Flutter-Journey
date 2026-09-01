import 'package:flutter/material.dart';

class CyberDashboard extends StatefulWidget {
  const CyberDashboard({super.key});

  @override
  State<CyberDashboard> createState() => _CyberDashboardState();
}

class _CyberDashboardState extends State<CyberDashboard> {
  bool scanning = false;
  int threats = 0;
  String status = "SYSTEM SECURE";

  void startScan() async {
    setState(() {
      scanning = true;
      status = "SCANNING...";
    });

    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      scanning = false;
      threats = 0;
      status = "SYSTEM SECURE";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff050a0e),

      appBar: AppBar(
        backgroundColor: const Color(0xff07151b),
        elevation: 0,
        title: const Row(
          children: [
            Icon(
              Icons.security,
              color: Colors.greenAccent,
            ),
            SizedBox(width: 10),
            Text(
              "CYBER // CORE",
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),

      drawer: Drawer(
        backgroundColor: const Color(0xff07151b),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(25),
              color: const Color(0xff0b2027),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.terminal,
                    color: Colors.greenAccent,
                    size: 45,
                  ),
                  SizedBox(height: 15),
                  Text(
                    "CYBER CORE",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Security Dashboard",
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),

            _drawerItem(
              Icons.dashboard,
              "Dashboard",
            ),

            _drawerItem(
              Icons.network_check,
              "Network Monitor",
            ),

            _drawerItem(
              Icons.devices,
              "Device Info",
            ),

            _drawerItem(
              Icons.history,
              "Activity Logs",
            ),

            const Divider(
              color: Colors.white12,
            ),

            _drawerItem(
              Icons.settings,
              "Settings",
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "WELCOME BACK, OPERATOR",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Security monitoring console",
              style: TextStyle(
                color: Colors.white54,
              ),
            ),

            const SizedBox(height: 25),

            // SYSTEM STATUS

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),

              decoration: BoxDecoration(
                color: const Color(0xff07151b),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.greenAccent.withOpacity(0.3),
                ),
              ),

              child: Column(
                children: [

                  Icon(
                    scanning
                        ? Icons.radar
                        : Icons.verified_user,
                    color: Colors.greenAccent,
                    size: 70,
                  ),

                  const SizedBox(height: 15),

                  Text(
                    status,
                    style: TextStyle(
                      color: scanning
                          ? Colors.orangeAccent
                          : Colors.greenAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    scanning
                        ? "Analyzing system activity..."
                        : "No security threats detected.",
                    style: const TextStyle(
                      color: Colors.white54,
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 50,

                    child: ElevatedButton.icon(
                      onPressed:
                          scanning ? null : startScan,

                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.greenAccent,
                        foregroundColor:
                            Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(12),
                        ),
                      ),

                      icon: Icon(
                        scanning
                            ? Icons.sync
                            : Icons.radar,
                      ),

                      label: Text(
                        scanning
                            ? "SCANNING..."
                            : "START SECURITY SCAN",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              "SYSTEM OVERVIEW",
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [

                Expanded(
                  child: _infoCard(
                    Icons.shield,
                    "Threats",
                    "$threats",
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _infoCard(
                    Icons.wifi,
                    "Network",
                    "ONLINE",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              children: [

                Expanded(
                  child: _infoCard(
                    Icons.lock,
                    "Security",
                    "ACTIVE",
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _infoCard(
                    Icons.devices,
                    "Devices",
                    "01",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 28),

            const Text(
              "ACTIVITY LOG",
              style: TextStyle(
                color: Colors.greenAccent,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),

            const SizedBox(height: 15),

            _log(
              "SYSTEM",
              "Security service initialized",
            ),

            _log(
              "NETWORK",
              "Network connection verified",
            ),

            _log(
              "SCAN",
              "Threat database updated",
            ),

            _log(
              "AUTH",
              "Local authentication active",
            ),

            const SizedBox(height: 25),

            Container(
              padding: const EdgeInsets.all(18),

              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.greenAccent
                      .withOpacity(0.25),
                ),
              ),

              child: const Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    "> SYSTEM READY_",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: "monospace",
                      fontSize: 15,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "> Monitoring services active...",
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: "monospace",
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "> Waiting for operator command...",
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: "monospace",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoCard(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xff07151b),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.white10,
        ),
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Icon(
            icon,
            color: Colors.greenAccent,
            size: 28,
          ),

          const SizedBox(height: 15),

          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }

  Widget _log(
    String type,
    String message,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: const Color(0xff07151b),
        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [

          const Icon(
            Icons.chevron_right,
            color: Colors.greenAccent,
          ),

          const SizedBox(width: 8),

          Text(
            "[$type]",
            style: const TextStyle(
              color: Colors.greenAccent,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              message,
              style: const TextStyle(
                color: Colors.white70,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerItem(
    IconData icon,
    String title,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.greenAccent,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white70,
        ),
      ),
      onTap: () {},
    );
  }
}