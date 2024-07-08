import "package:flutter/material.dart";

import "hearing_test_right.dart";
import "main_page.dart";


class HearingTestLeft extends StatelessWidget {
  final int? index;
  final String? name;

  HearingTestLeft({super.key, this.index, this.name});

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
                          return MainPage(index: index, name: name);
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
                        return HearingTestRight(index: index, name: name);
                      },
                    )),
                    child: Container(
                      //height:50,
                      //width:100,

                      padding: const EdgeInsets.all(12),
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 21,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child:
                  const Text(' ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 31,
                      //fontWeight: FontWeight.bold,
                    ),),
                )
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Testing your ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 31,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('right',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 31,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(' ear',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 31,
                        fontWeight: FontWeight.bold,
                      ),),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child:
                  const Text(' ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      //fontWeight: FontWeight.bold,
                    ),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child:
                  const Text('Press the button when\n     you hear a sound',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 21,
                      //fontWeight: FontWeight.bold,
                    ),),
                )
              ],
            ),
            const Spacer(),
          ],
        )
    );
  }
}

