import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;
    final isTablet = size.width >= 800 && size.width < 1200;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
                    vertical: isMobile ? 60 : 80,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo with Animation Effect
                      Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                          ),
                          borderRadius: BorderRadius.circular(32),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF6366F1).withOpacity(0.4),
                              blurRadius: 30,
                              offset: const Offset(0, 15),
                            ),
                            BoxShadow(
                              color: const Color(0xFF8B5CF6).withOpacity(0.2),
                              blurRadius: 50,
                              offset: const Offset(0, 25),
                            ),
                          ],
                        ),
                        child: Icon(
                          LucideIcons.compass,
                          size: isMobile ? 80 : 120,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Main Title with Gradient
                      Text(
                        "TOURMATE",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 36 : 56,
                          fontWeight: FontWeight.w900,
                          background: Paint()
                            ..shader = const LinearGradient(
                              colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
                            ).createShader(const Rect.fromLTWH(0, 0, 300, 70)),
                          color: Colors.transparent,
                          letterSpacing: 2.0,
                          height: 1.0,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Subtitle
                      Text(
                        "Redefining Travel Experience",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 18 : 24,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFFB4B4B8),
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 12),

                      // Tagline
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: isTablet ? 500 : 600,
                        ),
                        child: Text(
                          "EXPLORE, PLAN & ENJOY YOUR JOURNEY",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: isMobile ? 14 : 18,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF8B8B8F),
                            letterSpacing: 1.2,
                            height: 1.4,
                          ),
                        ),
                      ),
                      const SizedBox(height: 60),

                      // CTA Button
                      ModernCTAButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.about);
                        },
                        isMobile: isMobile,
                      ),
                    ],
                  ),
                ),

                // Features Preview Section
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 24 : 48,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Why Choose TourMate?",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 24 : 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 40),

                      GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: isMobile ? 1 : (isTablet ? 2 : 3),
                        crossAxisSpacing: 24,
                        mainAxisSpacing: 24,
                        childAspectRatio: isMobile ? 1.6 : 1.3,
                        children: [
                          FeatureCard(
                            icon: LucideIcons.mapPin,
                            title: "Smart Discovery",
                            description: "AI-powered recommendations based on your preferences and location.",
                            color: const Color(0xFF6366F1),
                          ),
                          FeatureCard(
                            icon: LucideIcons.utensils,
                            title: "Local Cuisine",
                            description: "Discover authentic local restaurants and food experiences.",
                            color: const Color(0xFF8B5CF6),
                          ),
                          FeatureCard(
                            icon: LucideIcons.map,
                            title: "Seamless Planning",
                            description: "Plan your entire journey with integrated booking and navigation.",
                            color: const Color(0xFF06B6D4),
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

class ModernCTAButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isMobile;

  const ModernCTAButton({
    super.key,
    required this.onPressed,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF6366F1), Color(0xFF8B5CF6)],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6366F1).withOpacity(0.4),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 32 : 48,
              vertical: isMobile ? 16 : 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Get Started",
                  style: GoogleFonts.inter(
                    fontSize: isMobile ? 16 : 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(width: 12),
                Icon(
                  LucideIcons.arrowRight,
                  size: isMobile ? 20 : 24,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const FeatureCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF1E1E2E).withOpacity(0.8),
            const Color(0xFF2A2A3E).withOpacity(0.6),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
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
              borderRadius: BorderRadius.circular(12),
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
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: -0.3,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: GoogleFonts.inter(
              fontSize: 13,
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
