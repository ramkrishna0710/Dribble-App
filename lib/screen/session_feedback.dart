import 'package:dribble_ui/screen/happiness_score_screen.dart';
import 'package:flutter/material.dart';

class SessionFeedback extends StatelessWidget {
  const SessionFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(decoration: const BoxDecoration(color: Color(0xffdff7eb)),),
          const Positioned(
            top: 180,
            left: -360,
            child: CircleAvatar(radius: 240, backgroundColor: Colors.orange,),
          ),
          const Positioned(
            top: 240,
            left: -280,
            child: CircleAvatar(radius: 180, backgroundColor: Color(0xffdff7eb),),
          ),
          const Positioned(
            top: 140,
            right: -360,
            child: CircleAvatar(radius: 240, backgroundColor: Colors.orange,),
          ),
          const Positioned(
            top: 200,
            right: -280,
            child: CircleAvatar(radius: 180, backgroundColor: Color(0xffdff7eb),),
          ),
          Positioned(
            top: 480,
            right: -40,
            child: Image.asset(
              'assets/cloud.png',
              width: 200,
              fit: BoxFit.cover,
            )
          ),
          Positioned(
            top: 45,
            left: -20,
            child: Image.asset(
              'assets/cloud.png',
              width: 150,
              fit: BoxFit.cover,
            )
          ),
          Positioned(
              top: 90,
              right: 20,
              child: Image.asset(
                'assets/bird.png',
                width: 100,
                fit: BoxFit.cover,
              )
          ),
          Positioned(
            left: 0,
              right: 0,
              top: 180,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Good',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                  ),
                  children: [
                  TextSpan(
                    text: ' Job!',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.orange,
                      fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
          ),
          Positioned(
            top: 280,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const HappinessScoreScreen()));
                  },
                  child: _startCard(
                    icon: Icons.air,
                    title: 'Breathe',
                    value: '12',
                  ),
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: () {
                  },
                  child: _startCard(
                    icon: Icons.air,
                    title: 'Time',
                    value: '2.35',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
              right: 0,
            top: 580,
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, -5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                        'Are you happy with this session?',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black12,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _emojiFeedback('assets/sad.png', 'No'),
                      _emojiFeedback('assets/happy.png', 'Little'),
                      _emojiFeedback('assets/v_happy.png', 'Yes'),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _emojiFeedback(String s, String t) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black12),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){},
            child: Image.asset(s, height: 50, width: 50,),
          ),
          const SizedBox(height: 8,),
          Text(t, style: const TextStyle(fontSize: 14, color: Colors.black54)),
        ],
      ),
    );
  }
}

_startCard({required IconData icon, required String title, required String value}) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: const Color(0xff2e2e2e),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: const Color(0xff97ab66),
          child: Icon(icon, color: Colors.white, size: 30,),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 4,),
            Text(
              value.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 10,),

          ],
        )

      ],
    ),
  );
}
