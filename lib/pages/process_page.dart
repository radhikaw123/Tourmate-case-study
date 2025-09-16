import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_routes.dart';

class ProcessPage extends StatelessWidget {
  const ProcessPage({super.key});

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
                              LucideIcons.workflow,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "Development Process",
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
                              "Our Development",
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
                              "Journey",
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
                              "Every decision in our development process was driven by solving specific traveler pain points through innovative technology, clean architecture, and user-centered design.",
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

                // Process Timeline
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 24 : 48,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Development Timeline",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 24 : 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Timeline Steps
                      Column(
                        children: [
                          ProcessStep(
                            stepNumber: "01",
                            title: "Problem Identification",
                            description: "Identified core pain points: scattered tourism information and fragmented app usage across multiple platforms.",
                            icon: LucideIcons.search,
                            color: const Color(0xFFEF4444),
                            isMobile: isMobile,
                          ),
                          const SizedBox(height: 24),
                          ProcessStep(
                            stepNumber: "02",
                            title: "User Research",
                            description: "Conducted extensive research showing travelers juggle 5-7 different apps for navigation, food, and attractions.",
                            icon: LucideIcons.users,
                            color: const Color(0xFF8B5CF6),
                            isMobile: isMobile,
                          ),
                          const SizedBox(height: 24),
                          ProcessStep(
                            stepNumber: "03",
                            title: "Solution Design",
                            description: "Conceptualized a unified mobile app offering personalized travel recommendations with clean, modular architecture.",
                            icon: LucideIcons.layoutGrid,
                            color: const Color(0xFF10B981),
                            isMobile: isMobile,
                          ),
                          const SizedBox(height: 24),
                          ProcessStep(
                            stepNumber: "04",
                            title: "Technology Implementation",
                            description: "Implemented Firebase authentication, CRUD operations, and RESTful API integration for scalable performance.",
                            icon: LucideIcons.database,
                            color: const Color(0xFF06B6D4),
                            isMobile: isMobile,
                          ),
                          const SizedBox(height: 24),
                          ProcessStep(
                            stepNumber: "05",
                            title: "Testing & Iteration",
                            description: "Conducted iterative prototyping, debugging Firebase issues, and improving UI/UX based on user feedback.",
                            icon: LucideIcons.testTube,
                            color: const Color(0xFFF59E0B),
                            isMobile: isMobile,
                          ),
                          const SizedBox(height: 24),
                          ProcessStep(
                            stepNumber: "06",
                            title: "Final Delivery",
                            description: "Delivered a smart platform with real-time, secure, personalized recommendations that solves traveler pain points.",
                            icon: LucideIcons.checkCircle,
                            color: const Color(0xFF10B981),
                            isMobile: isMobile,
                          ),
                        ],
                      ),

                      const SizedBox(height: 60),

                      // Key Features
                      Text(
                        "Key Features Delivered",
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
                          FeatureCard(
                            icon: LucideIcons.mapPin,
                            title: "Smart Recommendations",
                            description: "AI-powered suggestions based on user preferences and real-time location data.",
                            color: const Color(0xFF6366F1),
                          ),
                          FeatureCard(
                            icon: LucideIcons.shield,
                            title: "Secure Authentication",
                            description: "Firebase-powered security with encrypted user data and secure API communications.",
                            color: const Color(0xFF8B5CF6),
                          ),
                          FeatureCard(
                            icon: LucideIcons.zap,
                            title: "Real-time Updates",
                            description: "Live data synchronization ensuring users always have the latest information.",
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
                            onPressed: () => Navigator.pushNamed(context, AppRoutes.persona),
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

class ProcessStep extends StatelessWidget {
  final String stepNumber;
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final bool isMobile;

  const ProcessStep({
    super.key,
    required this.stepNumber,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isMobile ? 24 : 32),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFF1E1E2E).withOpacity(0.8),
            const Color(0xFF2A2A3E).withOpacity(0.6),
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
      child: Row(
        children: [
          // Step Number
          Container(
            width: isMobile ? 60 : 80,
            height: isMobile ? 60 : 80,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [color, color.withOpacity(0.8)],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: color.withOpacity(0.3),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Center(
              child: Text(
                stepNumber,
                style: GoogleFonts.inter(
                  fontSize: isMobile ? 18 : 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(width: 24),
          
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: color.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        icon,
                        size: isMobile ? 20 : 24,
                        color: color,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      title,
                      style: GoogleFonts.inter(
                        fontSize: isMobile ? 18 : 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: -0.3,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  description,
                  style: GoogleFonts.inter(
                    fontSize: isMobile ? 14 : 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFB4B4B8),
                    height: 1.6,
                    letterSpacing: 0.1,
                  ),
                ),
              ],
            ),
          ),
        ],
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
