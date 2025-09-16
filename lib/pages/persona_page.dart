import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_routes.dart';

class PersonaPage extends StatelessWidget {
  const PersonaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;
    final isTablet = size.width >= 800 && size.width < 1200;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF0F0F23),
              const Color(0xFF1A1A2E),
              const Color(0xFF16213E),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Hero Section
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 24 : 48,
                    vertical: isMobile ? 40 : 60,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header with Logo
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                              ),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFF6366F1).withOpacity(0.3),
                                  blurRadius: 20,
                                  offset: const Offset(0, 8),
                                ),
                              ],
                            ),
                            child: const Icon(
                              LucideIcons.users,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "User Personas",
                            style: GoogleFonts.inter(
                              fontSize: isMobile ? 28 : 36,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),

                      // Hero Content
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: isTablet ? 600 : 800,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Understanding Our",
                              style: GoogleFonts.inter(
                                fontSize: isMobile ? 32 : 48,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                height: 1.1,
                                letterSpacing: -1.0,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "Users",
                              style: GoogleFonts.inter(
                                fontSize: isMobile ? 32 : 48,
                                fontWeight: FontWeight.w900,
                                background: Paint()
                                  ..shader = const LinearGradient(
                                    colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                                  ).createShader(const Rect.fromLTWH(0, 0, 200, 70)),
                                color: Colors.transparent,
                                height: 1.1,
                                letterSpacing: -1.0,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              "Our user personas represent the diverse needs and motivations of travelers who seek authentic experiences, seamless planning, and personalized recommendations.",
                              style: GoogleFonts.inter(
                                fontSize: isMobile ? 16 : 18,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFFB4B4B8),
                                height: 1.6,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Persona Cards Section
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 24 : 48,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Meet Our Travelers",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 24 : 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Persona Cards Grid
                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: isMobile ? 1 : (isTablet ? 2 : 3),
                        crossAxisSpacing: 24,
                        mainAxisSpacing: 24,
                        childAspectRatio: isMobile ? 1.1 : 0.9,
                        children: [
                          PersonaCard(
                            displayImagePath: "assets/persona1.png",
                            detailImagePath: "assets/p1.png",
                            name: "Sarah - The Explorer",
                            age: "24",
                            occupation: "Digital Nomad",
                            quote: "I want to explore new cities without missing the must-visit places and manage my trips hassle-free.",
                            traits: ["Adventure-seeking", "Tech-savvy", "Spontaneous"],
                            color: const Color(0xFF6366F1),
                          ),
                          PersonaCard(
                            displayImagePath: "assets/persona2.png",
                            detailImagePath: "assets/p2.png",
                            name: "Alex - The Planner",
                            age: "22",
                            occupation: "Family Traveler",
                            quote: "I need one reliable app where I can plan trips, find nearby attractions, and keep everything organized for my family.",
                            traits: ["Organized", "Family-focused", "Safety-conscious"],
                            color: const Color(0xFF8B5CF6),
                          ),
                          PersonaCard(
                            displayImagePath: "assets/persona3.png",
                            detailImagePath: "assets/p3.png",
                            name: "Marcus - The Foodie",
                            age: "31",
                            occupation: "Food Blogger",
                            quote: "Whenever I travel, I look for authentic local food experiences—an app that guides me to the best cuisines would be perfect.",
                            traits: ["Food-enthusiast", "Social", "Authenticity-focused"],
                            color: const Color(0xFF06B6D4),
                          ),
                        ],
                      ),

                      const SizedBox(height: 60),

                      // User Insights
                      Text(
                        "Key User Insights",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 24 : 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 32),

                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: isMobile ? 1 : (isTablet ? 2 : 3),
                        crossAxisSpacing: 24,
                        mainAxisSpacing: 24,
                        childAspectRatio: isMobile ? 1.2 : 1.1,
                        children: [
                          InsightCard(
                            icon: LucideIcons.target,
                            title: "Personalization Priority",
                            description: "Users want recommendations tailored to their specific interests, travel style, and preferences.",
                            color: const Color(0xFF6366F1),
                          ),
                          InsightCard(
                            icon: LucideIcons.clock,
                            title: "Time Efficiency",
                            description: "Travelers value quick access to relevant information without overwhelming details.",
                            color: const Color(0xFF8B5CF6),
                          ),
                          InsightCard(
                            icon: LucideIcons.shield,
                            title: "Trust & Safety",
                            description: "Users prioritize verified information, safety features, and reliable recommendations.",
                            color: const Color(0xFF06B6D4),
                          ),
                        ],
                      ),

                      const SizedBox(height: 60),

                      // Navigation Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ModernButton(
                            onPressed: () => Navigator.pop(context),
                            icon: LucideIcons.arrowLeft,
                            label: "Back",
                            isSecondary: true,
                            isMobile: isMobile,
                          ),
                          ModernButton(
                            onPressed: () => Navigator.pushNamed(context, AppRoutes.userFlow),
                            icon: LucideIcons.arrowRight,
                            label: "Continue",
                            isMobile: isMobile,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PersonaCard extends StatelessWidget {
  final String displayImagePath;
  final String detailImagePath;
  final String name;
  final String age;
  final String occupation;
  final String quote;
  final List<String> traits;
  final Color color;

  const PersonaCard({
    super.key,
    required this.displayImagePath,
    required this.detailImagePath,
    required this.name,
    required this.age,
    required this.occupation,
    required this.quote,
    required this.traits,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => PersonaImagePage(
                imagePath: detailImagePath,
                name: name,
              ),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color(0xFF1E1E2E).withOpacity(0.9),
                const Color(0xFF2A2A3E).withOpacity(0.7),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: color.withOpacity(0.2),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.1),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: color.withOpacity(0.3),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: color.withOpacity(0.2),
                        blurRadius: 15,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      displayImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Name and Details
              Text(
                name,
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: -0.3,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                "$age • $occupation",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: color,
                  letterSpacing: 0.1,
                ),
              ),
              const SizedBox(height: 16),

              // Quote
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: color.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Text(
                  '\"$quote\"',
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFB4B4B8),
                    height: 1.5,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 0.1,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Traits
              Text(
                "Key Traits:",
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 0.2,
                ),
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: traits.map((trait) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    trait,
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: color,
                    ),
                  ),
                )).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InsightCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const InsightCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF1E1E2E).withOpacity(0.9),
            const Color(0xFF2A2A3E).withOpacity(0.7),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: color.withOpacity(0.2),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              icon,
              size: 24,
              color: color,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFB4B4B8),
              height: 1.5,
              letterSpacing: 0.1,
            ),
          ),
        ],
      ),
    );
  }
}

class ModernButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String label;
  final bool isSecondary;
  final bool isMobile;

  const ModernButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    this.isSecondary = false,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: isSecondary
            ? LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.transparent,
                ],
              )
            : const LinearGradient(
                colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
              ),
        borderRadius: BorderRadius.circular(16),
        border: isSecondary
            ? Border.all(
                color: Colors.white.withOpacity(0.2),
                width: 1,
              )
            : null,
        boxShadow: isSecondary
            ? null
            : [
                BoxShadow(
                  color: const Color(0xFF6366F1).withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 20 : 24,
              vertical: isMobile ? 12 : 16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: isMobile ? 18 : 20,
                  color: Colors.white,
                ),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: GoogleFonts.inter(
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 0.2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PersonaImagePage extends StatelessWidget {
  final String imagePath;
  final String name;

  const PersonaImagePage({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F0F23),
        elevation: 0,
        title: null,
      ),
      backgroundColor: const Color(0xFF0F0F23),
      body: Center(
        child: InteractiveViewer(
          minScale: 0.5,
          maxScale: 4.0,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: isMobile ? 800 : 1200,
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
      ),
    );
  }
}