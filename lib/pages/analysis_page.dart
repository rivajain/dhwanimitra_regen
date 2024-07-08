import "package:flutter/material.dart";

import "main_page.dart";

class AnalysisPage extends StatelessWidget {
  final int? index;
  final String? name;

  AnalysisPage({super.key, this.index, this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            SafeArea(
              child: GestureDetector(
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
            )
          ],
        )
    );
  }
}

