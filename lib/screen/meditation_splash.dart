import 'package:dribble_ui/screen/session_feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MeditationSplash extends StatelessWidget {
  const MeditationSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
            height: 300,
            width: double.infinity,
            color: const Color(0xffd4dcbc),
          ),
          Positioned(
            top: 150,
            child: Transform.rotate(
              angle: 45,
              child: Container(
                height: 500,
                width: 450,
                decoration: const BoxDecoration(
                  color: Color(0xfffdeccd),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 240,
            child: Transform.rotate(
              angle: 45,
              child: Container(
                height: 500,
                width: 450,
                decoration: const BoxDecoration(
                  color: Color(0xfffedacc),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: -150,
            child: Transform.rotate(
              angle: 45,
              child: Container(
                height: 700,
                width: 600,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
              right: 0,
              top: 200,
              child: Image.asset('assets/meditation.png'),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 560,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Nature Your ',
                style: TextStyle(
                  color: Color(0xff583823),
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: 'Peaceful Mind ',
                    style: TextStyle(
                      color: Color(0xffed6420),
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'With AI',
                    style: TextStyle(
                      color: Color(0xff583823),
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    )
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: -35,
            child: Image.asset('assets/cloud.png'),
          ),
          Positioned(
            top: 100,
            right: 120,
            child: Image.asset('assets/bird.png'),
          ),
          Positioned(
            top: 240,
            right: -15,
            child: Image.asset('assets/cloud.png'),
          ),
          Positioned(
            top: 160,
            left: 15,
            child: Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),

          ),
          Positioned(
            top: 130,
            left: 10,
            child: Container(
              height: 15,
              width: 15,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 80,
        width: 80,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=> const SessionFeedback()),
            );
          },
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(42),
          ),
          child: const Icon(Icons.arrow_forward, color: Colors.white, weight: 700,),
        ),
      ),
    );
  }
}
