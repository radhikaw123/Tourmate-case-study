import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConclusionPage extends StatelessWidget {
  const ConclusionPage({super.key});

  // 🔗 Replace with your LinkedIn profile URL
  final String linkedInUrl =
      "https://www.linkedin.com/in/radhika-ware-uiuxdesigner-javadeveloper-eventvolunteer?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BucM0eSRIQVybnlll0T6XiQ%3D%3D";

  Future<void> _launchLinkedIn() async {
    final Uri url = Uri.parse(
      "https://www.linkedin.com/in/radhika-ware-uiuxdesigner-javadeveloper-eventvolunteer?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BucM0eSRIQVybnlll0T6XiQ%3D%3D",
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.pink[100], // ✅ Pink background
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Top Description Box
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFD46A6A),
                  border: Border.all(color: Colors.blue.shade900, width: 6),
                ),
                child: const Text(
                  "Tourmate solves the problem of travelers using multiple apps by bringing attractions, local food, and trip planning together in one place. It helps users discover nearby spots and cuisines easily with clear and engaging information. The app makes travel planning simpler, faster, and more enjoyable for everyone. Overall, it turns scattered travel experiences into one smooth and convenient journey.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    height: 1.4,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Thank you Text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "\"Thank you for exploring my case study.\n\n"
                  "I’m always excited to connect, collaborate, and share ideas.\n\n"
                  "Let’s build impactful solutions together!\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Profile Image
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  "assets/profile.jpg", // ✅ Replace with your image
                  width: 200,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 12),

              // Clickable LinkedIn Role Tag
              GestureDetector(
                onTap: () async {
                  await _launchLinkedIn();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(color: Colors.blue.shade900),
                  child: const Text(
                    "UI/UX Designer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Back button
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
