import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_routes.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                            LucideIcons.compass,
                            size: 32,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          "TourMate",
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
                            "Redefining Travel",
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
                            "Experience",
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
                            "TourMate is a revolutionary tourism platform that transforms how travelers discover, plan, and experience destinations. "
                            "Powered by cutting-edge technology and personalized AI recommendations.",
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

              // Content Sections
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 24 : 48,
                  vertical: 40,
                ),
                child: Column(
                  children: [
                    // Problem & Solution Cards
                    Row(
                      children: [
                        Expanded(
                          child: ModernCard(
                            icon: LucideIcons.alertCircle,
                            title: "The Challenge",
                            description: "Travelers face fragmented experiences across multiple platforms, struggling to find authentic local insights and personalized recommendations that truly match their preferences.",
                            gradient: const LinearGradient(
                              colors: [Color(0xFFEF4444), Color(0xFFDC2626)],
                            ),
                            isMobile: isMobile,
                          ),
                        ),
                        SizedBox(width: isMobile ? 0 : 24),
                        if (isMobile) const SizedBox(height: 24),
                        Expanded(
                          child: ModernCard(
                            icon: LucideIcons.zap,
                            title: "Our Solution",
                            description: "TourMate delivers a unified, intelligent platform that combines real-time location data, AI-powered recommendations, and seamless user experience to revolutionize travel planning.",
                            gradient: const LinearGradient(
                              colors: [Color(0xFF10B981), Color(0xFF059669)],
                            ),
                            isMobile: isMobile,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 48),

                    // Key Insights Grid
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

                    Row(
                      children: [
                        Expanded(
                          child: ModernCard(
                            icon: LucideIcons.layers,
                            title: "Fragmented Experience",
                            description: "Users juggle between 5-7 different apps for a single trip, creating friction and missed opportunities.",
                            gradient: const LinearGradient(
                              colors: [Color(0xFFEF4444), Color(0xFFDC2626)],
                            ),
                            isMobile: isMobile,
                          ),
                        ),
                        SizedBox(width: isMobile ? 0 : 24),
                        if (isMobile) const SizedBox(height: 24),
                        Expanded(
                          child: ModernCard(
                            icon: LucideIcons.brain,
                            title: "Personalization Gap",
                            description: "Current solutions lack intelligent personalization, offering generic recommendations that don't match user preferences.",
                            gradient: const LinearGradient(
                              colors: [Color(0xFF10B981), Color(0xFF059669)],
                            ),
                            isMobile: isMobile,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 27),
                    Row(
                      children: [
                        Expanded(
                          child: ModernCard(
                            icon: LucideIcons.trendingUp,
                            title: "Market Opportunity",
                            description: "The travel tech market shows 40% growth potential with demand for unified, smart travel solutions.",
                            gradient: const LinearGradient(
                              colors: [Color(0xFFEF4444), Color(0xFFDC2626)],
                            ),
                            isMobile: isMobile,
                          ),
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
                          onPressed: () => Navigator.pushNamed(context, AppRoutes.process),
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
    );
  }
}

class ModernCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Gradient gradient;
  final bool isMobile;

  const ModernCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.gradient,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isMobile ? 16 : 20),
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
          color: Colors.white.withOpacity(0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: gradient.colors.first.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Icon(
              icon,
              size: isMobile ? 22 : 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: isMobile ? 18 : 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: GoogleFonts.inter(
              fontSize: isMobile ? 13 : 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFB4B4B8),
              height: 1.6,
              letterSpacing: 0.2,
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
                  color: isSecondary ? Colors.white : Colors.white,
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
