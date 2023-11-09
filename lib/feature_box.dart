import 'package:flutter/material.dart';
import 'package:voice_ast_chat_gpt/pallete.dart';

class FeatureBox extends StatelessWidget {
  const FeatureBox(
      {Key? key,
      required this.color,
      required this.headerText,
      required this.description})
      : super(key: key);

  final Color color;
  final String headerText;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0,).copyWith(
          left: 15
        ),
        child: Column(
           children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                headerText,
                style: TextStyle(
                    fontFamily: "Cera Pro",
                    fontSize: 18,
                    color: Pallete.blackColor,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right:20.0),
              child: Text(
                description,
                style: TextStyle(
                    fontFamily: "Cera Pro",
                    fontSize: 18,
                    color: Pallete.blackColor,
                ),
              ),
            ),
          ],
        ),
    ),

    );
  }
}
