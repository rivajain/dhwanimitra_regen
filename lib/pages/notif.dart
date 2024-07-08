import "package:dhwanimitra/pages/main_page.dart";
import "package:flutter/material.dart";

import "main_page.dart";



class Notifications extends StatelessWidget {
  final int? index;
  final String? name;

  final List<Map<String, String>> items = [
    {
      "image": "lib/images/image_0.png",
      "text": "Item 1"
    },
    {
      "image": "lib/images/image_1.png",
      "text": "Item 2"
    },
    {
      "image": "lib/images/image_2.png",
      "text": "Item 3"
    },

  ];

  Notifications({super.key, this.index, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
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
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                  ),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 8,
                      width: 230,
                      padding: const EdgeInsets.all(24),
                      child: const Divider(
                        color: Colors.black26,
                        thickness: 4,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context){
                        return MainPage(index: index, name: name);
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
            Column(
                children:[
                  Text(' ')
                ]
            ),
            Column(
              children: items.map((item) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 120,
                        width: 400,
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 10), // Border around the container
                        ),

                        child: Container(
                            height: 100,
                            width: 400,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  Container(
                                      height: 100,
                                      width: 400,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SizedBox(width: 10), // add some spacing between image and text
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SizedBox(width: 10),
                                              Image.asset(
                                                item["image"]!,
                                                width: 80, // specify the width and height of the image
                                                height: 80,
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(width: 10), // add some spacing between image and text
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SizedBox(width: 10), // add some spacing between image and text
                                              Text(item["text"]!),
                                            ],
                                          )

                                        ],
                                      )
                                  ),
                                ]
                            )
                        )
                    ),
                  ],
                );
              }).toList(),
            ),
            const Spacer(),
          ],
        )
    );
  }
}

