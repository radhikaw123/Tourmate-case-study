import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_routes.dart';

class UIDesignPage extends StatelessWidget {
  const UIDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;
    final isTablet = size.width >= 800 && size.width < 1200;

    // List of mockup image paths
    final List<String> mockupImages = [
      "assets/images/mockup1.png",
      "assets/images/mockup2.jpg",
      "assets/images/mockup3.jpg",
      "assets/images/mockup4.jpg",
      "assets/images/mockup5.jpg",
      "assets/images/mockup6.jpg",
      "assets/images/mockup7.jpg",
      "assets/images/mockup8.png",
      "assets/images/mockup9.png",
    ];

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
                              LucideIcons.palette,
                              size: 32,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "UI Design",
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
                              "Visual",
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
                              "Excellence",
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
                              "Our UI design combines modern aesthetics with intuitive functionality, creating a seamless and engaging experience that delights users at every interaction.",
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

                // Design Principles Section
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 24 : 48,
                    vertical: 40,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Design Principles",
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
                          DesignPrincipleCard(
                            icon: LucideIcons.eye,
                            title: "Visual Hierarchy",
                            description: "Clear information architecture with proper emphasis and visual flow.",
                            color: const Color(0xFF6366F1),
                          ),
                          DesignPrincipleCard(
                            icon: LucideIcons.smartphone,
                            title: "Responsive Design",
                            description: "Seamless experience across all device sizes and orientations.",
                            color: const Color(0xFF8B5CF6),
                          ),
                          DesignPrincipleCard(
                            icon: LucideIcons.zap,
                            title: "Performance",
                            description: "Optimized for speed and smooth interactions with minimal loading times.",
                            color: const Color(0xFF06B6D4),
                          ),
                        ],
                      ),

                      const SizedBox(height: 60),

                      // Mockups Section
                      Text(
                        "Design Mockups",
                        style: GoogleFonts.inter(
                          fontSize: isMobile ? 24 : 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Mockups Grid
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: isMobile ? 1 : (isTablet ? 2 : 3),
                          crossAxisSpacing: 24,
                          mainAxisSpacing: 24,
                          childAspectRatio: isMobile ? 1.2 : 0.8,
                        ),
                        itemCount: mockupImages.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color(0xFF1E1E2E).withOpacity(0.8),
                                  const Color(0xFF2A2A3E).withOpacity(0.6),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(20),
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Image.asset(
                                  mockupImages[index],
                                  fit: BoxFit.contain,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 60),

                      // Design Features
                      Text(
                        "Key Design Features",
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
                            icon: LucideIcons.palette,
                            title: "Modern Color Palette",
                            description: "Carefully selected colors that enhance readability and create visual appeal.",
                            color: const Color(0xFF6366F1),
                          ),
                          FeatureCard(
                            icon: LucideIcons.type,
                            title: "Typography System",
                            description: "Consistent font hierarchy with Google Fonts Inter for professional appearance.",
                            color: const Color(0xFF8B5CF6),
                          ),
                          FeatureCard(
                            icon: LucideIcons.layout,
                            title: "Layout Design",
                            description: "Clean, organized layouts with proper spacing and alignment principles.",
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
                            onPressed: () => Navigator.pushNamed(context, AppRoutes.conclusion),
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

class DesignPrincipleCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const DesignPrincipleCard({
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
