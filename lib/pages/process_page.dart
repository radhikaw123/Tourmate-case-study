import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../app_routes.dart';

class ProcessPage extends StatelessWidget {
  const ProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFC1E3), Color(0xFFF48FB1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      children: [
                        Icon(LucideIcons.globe2, size: 40, color: Colors.green),
                        const SizedBox(width: 12),
                        Text(
                          "TourMate - Process",
                          style: Theme.of(
                            context,
                          ).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // Timeline section
                    Text(
                      "Development Journey",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _timelineItem(
                      "Each decision was made to solve specific traveler pain points with Firebase, APIs, and clean architecture.",
                    ),
                    _timelineItem(
                      "Motivation came from research insights showing travelers juggle multiple apps for navigation, food, and attractions.",
                    ),
                    _timelineItem(
                      "Mapped user journeys, compared technology options, and aligned features with the problem statement.",
                    ),
                    _timelineItem(
                      "Analyzed competitor apps like TripAdvisor and Zomato; identified gaps in real-time smart recommendations.",
                    ),
                    _timelineItem(
                      "Adapted references but added CRUD features and scalable architecture.",
                    ),
                    _timelineItem(
                      "Debugged Firebase CRUD and API sync issues, strengthening the app.",
                    ),
                    _timelineItem(
                      "Iterative prototyping improved UI/UX and backend performance.",
                    ),
                    _timelineItem(
                      "Final app offers a smart platform with real-time, secure, personalized recommendations.",
                    ),

                    const SizedBox(height: 40),

                    // Ideation & Process Cards
                    Text(
                      "Ideation",
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),

                    Flex(
                      direction: isMobile ? Axis.vertical : Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: _processCard(
                            LucideIcons.search,
                            "Identified the problem of scattered tourism info & fragmented app usage.",
                          ),
                        ),
                        const SizedBox(width: 20, height: 20),
                        Expanded(
                          child: _processCard(
                            LucideIcons.layoutGrid,
                            "Conceptualized a unified mobile app offering personalized travel recommendations.",
                          ),
                        ),
                        const SizedBox(width: 20, height: 20),
                        Expanded(
                          child: _processCard(
                            LucideIcons.settings,
                            "Designed a clean, modular architecture ensuring scalability and maintenance.",
                          ),
                        ),
                        const SizedBox(width: 20, height: 20),
                        Expanded(
                          child: _processCard(
                            LucideIcons.database,
                            "Implemented Firebase authentication, CRUD operations, and RESTful API integration.",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Navigation Buttons
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                    label: const Text("Back"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed:
                        () => Navigator.pushNamed(context, AppRoutes.persona),
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text("Next"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
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

  Widget _timelineItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.fiber_manual_record, color: Colors.pink, size: 16),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: Colors.black87, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _processCard(IconData icon, String text) {
    return Card(
      color: Colors.pink[50],
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Colors.pinkAccent),
            const SizedBox(height: 12),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(height: 1.4),
            ),
          ],
        ),
      ),
    );
  }
}
