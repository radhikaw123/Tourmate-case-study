import 'package:flutter/material.dart';
import '../app_routes.dart';

class UIDesignPage extends StatelessWidget {
  const UIDesignPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List of mockup image paths (replace with your real images)
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
        width: double.infinity,
        height: double.infinity,
        color: Colors.pink[100], // ✅ Pink background
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            // Title Box
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue[900], // Dark Blue
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Text(
                "UI Design",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Grid of mockups
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // ✅ 3 per row like your screenshot
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemCount: mockupImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink[100]!, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          mockupImages[index],
                          fit: BoxFit.contain, // ✅ don’t crop, show full mockup
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

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
                        () =>
                            Navigator.pushNamed(context, AppRoutes.conclusion),
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
}
