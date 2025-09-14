import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../app_routes.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                    "TourMate",
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Intro
              Text(
                "TourMate is an all-in-one tourism application created to simplify the travel experience for explorers. "
                "It provides travelers with quick access to tourist attractions, cuisines, and personalized travel suggestions.",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),

              // Problem
              SectionCard(
                title: "Problem Statement",
                icon: LucideIcons.alertTriangle,
                description:
                    "Travelers struggle to find authentic local attractions and food due to scattered or incomplete information. "
                    "Existing apps provide generic recommendations without personalization.",
              ),
              const SizedBox(height: 20),

              // Solution
              SectionCard(
                title: "Possible Solution",
                icon: LucideIcons.lightbulb,
                description:
                    "Tourmate solves this by offering location-based recommendations powered by APIs and Firebase. "
                    "It provides a unified platform for planning trips, discovering food, and exploring attractions.",
              ),
              const SizedBox(height: 30),

              // Insights
              Flex(
                direction: isMobile ? Axis.vertical : Axis.horizontal,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InsightCard(
                      icon: LucideIcons.appWindow,
                      text:
                          "Travelers use multiple apps separately for navigation, food, and attractions.",
                    ),
                  ),
                  const SizedBox(width: 20, height: 20),
                  Expanded(
                    child: InsightCard(
                      icon: LucideIcons.target,
                      text:
                          "Users express a strong need for a unified app with personalized recommendations.",
                    ),
                  ),
                  const SizedBox(width: 20, height: 20),
                  Expanded(
                    child: InsightCard(
                      icon: LucideIcons.trendingUp,
                      text:
                          "Competitor apps lack real-time smart suggestions, creating an opportunity for innovation.",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Next Button
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Back button → Persona Page
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

                    // Next button → UI Design Page
                    ElevatedButton.icon(
                      onPressed:
                          () => Navigator.pushNamed(context, AppRoutes.process),
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
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const SectionCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[100],
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 28, color: Colors.pinkAccent),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}

class InsightCard extends StatelessWidget {
  final String text;
  final IconData icon;

  const InsightCard({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[100],
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.black87),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium?.copyWith(height: 1.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
