import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_routes.dart';

class UserFlowPage extends StatelessWidget {
  const UserFlowPage({super.key});

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
                              LucideIcons.gitBranch,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "User Flow",
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
                              "Journey",
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
                              "Mapping",
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
                              "Our user flow diagram illustrates the complete journey from discovery to engagement, ensuring every interaction is intuitive and purposeful.",
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

                // User Flow Diagram Section
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 24 : 48,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Complete User Journey",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 24 : 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // User Flow Image Container
                      Align(
                        alignment: Alignment.center,
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: isMobile ? 620 : (isTablet ? 900 : 1000),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white.withOpacity(0.96),
                                  const Color(0xFFF3F4F6),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(
                                color: Colors.black.withOpacity(0.06),
                                width: 1,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.08),
                                  blurRadius: 20,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Center(
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxWidth: isMobile
                                          ? 600
                                          : (isTablet ? 900 : 1100),
                                    ),
                                    child: Image.asset(
                                      "assets/userflow.png",
                                      fit: BoxFit.contain,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 40),

                      // Flow Steps
                      Text(
                        "Key Flow Steps",
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
                          FlowStepCard(
                            stepNumber: "01",
                            title: "Discovery",
                            description: "Users discover TourMate through app stores, recommendations, or marketing campaigns.",
                            icon: LucideIcons.search,
                            color: const Color(0xFF6366F1),
                          ),
                          FlowStepCard(
                            stepNumber: "02",
                            title: "Onboarding",
                            description: "Smooth registration process with personalized preferences and location setup.",
                            icon: LucideIcons.userPlus,
                            color: const Color(0xFF8B5CF6),
                          ),
                          FlowStepCard(
                            stepNumber: "03",
                            title: "Exploration",
                            description: "Browse attractions, restaurants, and activities with smart recommendations.",
                            icon: LucideIcons.compass,
                            color: const Color(0xFF06B6D4),
                          ),
                          FlowStepCard(
                            stepNumber: "04",
                            title: "Planning",
                            description: "Create itineraries, save favorites, and plan complete travel experiences.",
                            icon: LucideIcons.calendar,
                            color: const Color(0xFF10B981),
                          ),
                          FlowStepCard(
                            stepNumber: "05",
                            title: "Navigation",
                            description: "Real-time navigation to selected destinations with offline capabilities.",
                            icon: LucideIcons.mapPin,
                            color: const Color(0xFFF59E0B),
                          ),
                          FlowStepCard(
                            stepNumber: "06",
                            title: "Engagement",
                            description: "Share experiences, leave reviews, and discover new recommendations.",
                            icon: LucideIcons.heart,
                            color: const Color(0xFFEF4444),
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
                            onPressed: () => Navigator.pushNamed(context, AppRoutes.uiDesign),
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

class FlowStepCard extends StatelessWidget {
  final String stepNumber;
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const FlowStepCard({
    super.key,
    required this.stepNumber,
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
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [color, color.withOpacity(0.8)],
                  ),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: color.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    stepNumber,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  size: 20,
                  color: color,
                ),
              ),
            ],
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
