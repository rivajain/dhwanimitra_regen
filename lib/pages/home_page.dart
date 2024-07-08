import 'package:dhwanimitra/pages/main_page.dart';
import 'package:dhwanimitra/pages/splash_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedIndex;
  String? name;

  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void updateName(String newName) {
    setState(() {
      name = newName;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SafeArea(
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    GestureDetector(
                        onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context){
                            return const SplashScreen();
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
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        height: 8,
                        width: 230,
                        padding: const EdgeInsets.all(24),
                        child: const Divider(
                          color: Colors.white,
                          thickness: 4,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context){
                          return const HomePage();
                        },
                      )),
                      child: Container(
                        //height:50,
                        //width:100,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Text(
                          'Eng',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

            ),
          Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Container(
                padding: const EdgeInsets.all(24),
                child: const Text(
                  " What's your age?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    //fontFamily: ,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
          ]
       ),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:[
                  Container(
                      height: 300,
                      width: 400,
                      padding: const EdgeInsets.all(24),
                      child: Image.asset('lib/images/pana1.png'),
                  ),
                ]
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                height: 95,
                width: 400,
                child:TextField(
                  onChanged: (text) {
                    updateName(text);
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your first name',
                  ),
                ),
              )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.white24,
                  height: 79,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 80,
                    itemBuilder: (context, index) {
                      bool isSelected = index + 1 == selectedIndex;
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          height: 100,
                          width: 90,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.blue : Colors.grey[350],
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              updateSelectedIndex(index + 1);
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: isSelected ? Colors.blue : Colors.grey[350],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14),
                              ),
                              elevation: 0,
                            ),
                            child: Text(
                              '${index + 1}',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    selectedIndex != null
                        ? "My age is $selectedIndex years old"
                        : "My age is ... years old",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Container(
                    height: 110,
                    width: 400,
                    padding: const EdgeInsets.all(24),
                    child: GestureDetector(
                      onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context){
                          return MainPage(index: selectedIndex, name: name);
                        },
                      )),
                      child: Container(
                        //height:50,
                        //width:100,
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text(
                              'Start',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                ]
            ),

      ],
      ),
    );
  }
}