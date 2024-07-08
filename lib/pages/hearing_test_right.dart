import "package:dhwanimitra/pages/hearing_test_left.dart";
import "package:flutter/material.dart";

import "audiogram.dart";



class HearingTestRight extends StatelessWidget {
  final int? index;
  final String? name;

  HearingTestRight({super.key, this.index, this.name});

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
                          return HearingTestLeft(index: index, name: name);
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
                        return AudioGram(index: index, name: name);
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
            const Spacer(),
          ],
        )
    );
  }
}

