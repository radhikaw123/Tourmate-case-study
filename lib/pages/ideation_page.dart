import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_routes.dart';

class IdeationPage extends StatelessWidget {
  const IdeationPage({super.key});

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
                              LucideIcons.lightbulb,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "Ideation",
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
                              "Creative",
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
                              "Ideation Process",
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
                              "Our ideation process combines design thinking, user research, and innovative technology to create solutions that truly resonate with travelers' needs and aspirations.",
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

                // Ideation Process Steps
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 24 : 48,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Our Ideation Journey",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 24 : 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 40),

                      // Process Steps
                      Column(
                        children: [
                          IdeationStep(
                            stepNumber: "01",
                            title: "Problem Discovery",
                            description: "We identified the core pain points travelers face when planning and experiencing their journeys.",
                            icon: LucideIcons.search,
                            color: const Color(0xFFEF4444),
                            isMobile: isMobile,
                          ),
                          const SizedBox(height: 24),
                          IdeationStep(
                            stepNumber: "02",
                            title: "User Research",
                            description: "Conducted extensive interviews and surveys to understand traveler behaviors and preferences.",
                            icon: LucideIcons.users,
                            color: const Color(0xFF8B5CF6),
                            isMobile: isMobile,
                          ),
                          const SizedBox(height: 24),
                          IdeationStep(
                            stepNumber: "03",
                            title: "Solution Brainstorming",
                            description: "Generated innovative ideas and concepts through collaborative design thinking sessions.",
                            icon: LucideIcons.brain,
                            color: const Color(0xFF10B981),
                            isMobile: isMobile,
                          ),
                          const SizedBox(height: 24),
                          IdeationStep(
                            stepNumber: "04",
                            title: "Concept Validation",
                            description: "Tested and refined our ideas through rapid prototyping and user feedback loops.",
                            icon: LucideIcons.checkCircle,
                            color: const Color(0xFF06B6D4),
                            isMobile: isMobile,
                          ),
                        ],
                      ),

                      const SizedBox(height: 60),

                      // Key Insights
                      Text(
                        "Key Insights",
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
                            title: "Personalization Matters",
                            description: "Users want recommendations tailored to their specific interests and travel style.",
                            color: const Color(0xFF6366F1),
                          ),
                          InsightCard(
                            icon: LucideIcons.clock,
                            title: "Time Efficiency",
                            description: "Travelers value quick access to relevant information without information overload.",
                            color: const Color(0xFF8B5CF6),
                          ),
                          InsightCard(
                            icon: LucideIcons.shield,
                            title: "Trust & Safety",
                            description: "Users prioritize verified information and safety features in travel apps.",
                            color: const Color(0xFF06B6D4),
                          ),
                        ],
                      ),

                      const SizedBox(height: 60),

                      // Navigation Button
                      Center(
                        child: ModernButton(
                          onPressed: () => Navigator.pushNamed(context, AppRoutes.process),
                          icon: LucideIcons.arrowRight,
                          label: "Continue to Process",
                          isMobile: isMobile,
                        ),
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

class IdeationStep extends StatelessWidget {
  final String stepNumber;
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final bool isMobile;

  const IdeationStep({
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
  final bool isMobile;

  const ModernButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.label,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: isMobile ? 24 : 32,
              vertical: isMobile ? 16 : 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: GoogleFonts.inter(
                    fontSize: isMobile ? 16 : 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(width: 12),
                Icon(
                  icon,
                  size: isMobile ? 20 : 22,
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
