import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        // Adding a Lottie animation via Network URL
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                      padding: const EdgeInsets.all(24),
                      child: const Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Lottie.network(
                  "https://lottie.host/8be371a6-a51d-4f46-9968-8f349f08833a/LeyegJquIm.json",
                  fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                )
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Container(
                  padding: const EdgeInsets.all(24),
                  child: const Text(
                    'WELCOME',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                      shadows:[
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black26,
                          offset: Offset(2.0,2.0),
                        ),
                      ]
                    ),
                  )
                ),
              ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                      padding: const EdgeInsets.all(24),
                      child: const Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                ]
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                      padding: const EdgeInsets.all(24),
                      child: const Text(
                        ' ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                ]
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context){
                  return const HomePage();
                },
              )),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                padding: const EdgeInsets.all(24),
                child: const Text(
                  'Start Hearing Test',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      )
    );
  }
}