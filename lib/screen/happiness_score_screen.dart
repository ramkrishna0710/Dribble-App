import 'package:flutter/material.dart';

class HappinessScoreScreen extends StatelessWidget {
  const HappinessScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Positioned(
                  top: -300,
                  left: -350,
                  right: -350,
                  child: CircleAvatar(
                    radius: 350,
                    backgroundColor: Color(0xfff2f3f4),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Your Happiness Score',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '2132',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70),
                        child: Text(
                          'Congratulations! Your happiness score is very high.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _iconWithLabel(
                            icon: Icons.alarm,
                            title: '32',
                            description: 'Session/Week',
                          ),
                          const SizedBox(width: 30),
                          _iconWithLabel(
                            icon: Icons.trending_down,
                            title: 'Low',
                            description: 'Stress Level',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Recommended for you',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 12),
                  _recommendationCard(
                    title: 'Basic Meditation\nCourse',
                    subtitle: '15 Mins Daily',
                    icon: Icons.access_time,
                    imgPath: 'assets/happiness.png',
                    context: context,
                  ),
                  const SizedBox(height: 16),
                  _recommendationCard(
                    title: 'Daily Thought',
                    subtitle: 'Meditation . 03 - 10 mins',
                    icon: Icons.play_arrow,
                    imgPath: null,
                    context: context,
                  ),
                  const SizedBox(height: 16),
                  _recommendationCard(
                    title: 'Breathing Exercise',
                    subtitle: 'Meditation . 06 - 10 mins',
                    icon: Icons.play_arrow,
                    imgPath: null,
                    context: context,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _iconWithLabel({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 28,
        ),
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }

  static Widget _recommendationCard({
    required String title,
    required String subtitle,
    required IconData icon,
    required String? imgPath,
    required BuildContext context,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: const Color(0xfff0f0f0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          imgPath != null
              ? Image.asset(
            imgPath,
            height: 70,
          )
              : CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: Icon(
              icon,
              color: Colors.black87,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
