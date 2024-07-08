import 'package:dhwanimitra/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'analysis_page.dart';
import 'hearing_test_left.dart';
import 'notif.dart';
import 'recent_results.dart';
import 'search_page.dart';

class MainPage extends StatelessWidget {
  final int? index;
  final String? name;

  MainPage({super.key, this.index, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
              child:
              Container(
                child:
                  Column(
                    children:[
                      Row(
                          children:[
                            GestureDetector(
                                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                                  builder: (context){
                                    return const HomePage();
                                  },
                                )),
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  child: const Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    size: 30,
                                  ),
                                )
                            ),
                            const Icon(Icons.calendar_month_sharp, color: Colors.blue),
                            const SizedBox(width: 8),
                            Text(
                              DateFormat('EEEE').format(DateTime.now()),
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[700],
                              ),
                            ),
                            const Text(', '),
                            Text(
                              DateFormat('MMMM d, y').format(DateTime.now()),
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[700],
                              ),
                            ),
                            const Text('                                     '),
                            Container(
                              child:
                              GestureDetector(
                                  onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                                    builder: (context){
                                      return Notifications(index: index, name: name);
                                    },
                                  )),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    padding: const EdgeInsets.all(12),
                                    child: const Icon(
                                      Icons.notifications_outlined,
                                      size: 30,
                                    ),
                                  )
                              ),
                            ),
                          ]
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:[
                          Container(
                            height: 53,
                            width: 440,
                            child: Text(
                              name != null ? '     Hello, $name! 👋' : 'No Name Entered',
                              textAlign: TextAlign.left,
                              style: const TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ]
                  ),
              ),
          ),
          const Row(
            children: [
              Text(' ',
                style: TextStyle(fontSize: 10
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        Center(
                          child: Container(
                            height: 150,
                            width: 150,
                            padding: const EdgeInsets.all(24),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),

                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    'lib/images/card8.png',
                                    width: 150,
                                    height: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                    bottom: 15,
                                    left: 35,
                                    child: Container(
                                      child: const Text(
                                        '8',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 54,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text("Hearing Stats",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("    People have been found with\n    hearing issues based on recent\n    tests.",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ]
                        ),
                        const Column(
                          children: [Text('      ')],
                        )
                      ]
                    ),

                ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              SizedBox(
                height: 30,
                width: 300,
                child: Text(' ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              SizedBox(
                height: 50,
                width: 300,
                child: Text('        Ear Health Matrix',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context){
                  return HearingTestLeft(index: index, name: name);
                },
              )),
                child: Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset('lib/images/hearingtest.png'),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context){
                    return RecentResults(index: index, name: name);
                  },
                )),
                child: Container(
                  height:120,
                  width: 120,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset('lib/images/recentresults.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context){
                    return RecentResults(index: index, name: name);
                  },
                )),
                child: Container(
                  height: 120,
                  width: 120,
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset('lib/images/language.png'),
                ),
              ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:[
              Container(
                height: 30,
                width: 300,
                child: const Text(' ',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                  height: 400,
                  width: 440,
                  child:Stack(
                    alignment: Alignment.center,
                    children: [
                          Positioned(
                            left: 17,
                            bottom: 80,
                            child:Container(
                              height: 310, // Increased height
                              width: 410, // Increased width
                              margin: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Image.asset(
                                'lib/images/fact.png',
                                fit: BoxFit.cover, // Ensure the image covers the container
                              ),
                            ),
                          ),
                      Positioned(
                        left: 0,
                        bottom: 0,
                        child: Image.asset(
                          'lib/images/navbar.png',
                          width: 440,
                          height: 95,
                          fit: BoxFit.cover,
                        ),
                      ),

                      Positioned(
                        bottom: 55,
                        left: 175.5,
                        child: Container(
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context){
                                return HearingTestLeft(index: index, name: name);
                              },
                            ),),
                            child: Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
                                    spreadRadius: 0.5,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Image.asset('lib/images/hticon.png'),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        left: 30,
                        child: Container(
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context){
                                return const HomePage();
                              },
                            )),
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              child: const Icon(
                                Icons.home_outlined,
                                color: Colors.grey,
                                size: 40.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            ),
                          ),

                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        left: 100,
                        child: Container(
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context){
                                return SearchPage(index: index, name: name);
                              },
                            )),
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              child: const Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 40.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            ),
                          ),

                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        left: 285,
                        child: Container(
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context){
                                return AnalysisPage(index: index, name: name);
                              },
                            )),
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              child: const Icon(
                                Icons.analytics_outlined
                                ,
                                color: Colors.grey,
                                size: 40.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            ),
                          ),

                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        left: 355,
                        child: Container(
                          child: GestureDetector(
                            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                              builder: (context){
                                return AnalysisPage(index: index, name: name);
                              },
                            )),
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              child: const Icon(
                                Icons.account_box_outlined,
                                color: Colors.grey,
                                size: 40.0,
                                semanticLabel: 'Text to announce in accessibility modes',
                              ),
                            ),
                          ),

                        ),
                      ),

                    ],
                  ),
                )
              ),
            ],
          ),
        ]
      ),
    );
  }
}

