import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/views/Cardscreen.dart';
import 'package:new_project/views/RatingBar.dart';

class Trophyscreen extends StatelessWidget {
  const Trophyscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MixPurple,
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Center(
              //   child: Image.asset(confetti),
              // ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                        height: 100, width: 100, child: Image.asset(trophyy)),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "Congratulations",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: WhiteColor),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "You have successfully completed",
                          style: TextStyle(fontSize: 15, color: WhiteColor),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "STANDERD 6 - UNIT 1.",
                          style: TextStyle(
                              fontSize: 15,
                              color: WhiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Where does food come from?.",
                          style: TextStyle(
                              fontSize: 15,
                              color: WhiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "2 Minutes.",
                          style: TextStyle(
                              fontSize: 15,
                              color: WhiteColor,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 40,
                              width: 140,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: GreenColor,
                                  ),
                                  onPressed: () {},
                                  child: (Text(
                                    "10 Correct",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: WhiteColor,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                              height: 40,
                              width: 140,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Red,
                                  ),
                                  onPressed: () {},
                                  child: (Text(
                                    "5 Wrong",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: WhiteColor,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: 400,
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Myrating()));
                              },
                              child: (Text(
                                "Watch Result",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: MixPurple,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: 400,
                          height: 40,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: MixPurple,
                                  side:
                                      BorderSide(width: 1, color: WhiteColor)),
                              onPressed: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Myrating()));
                                Get.to(Cardscreen());
                              },
                              child: (Text(
                                "Start New Quiz",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: WhiteColor,
                                    fontWeight: FontWeight.bold),
                              ))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Ratingscreen()),
                            );
                          },
                          child: Text(
                            "Give Feedback",
                            style: TextStyle(
                                color: WhiteColor,
                                fontSize: 13,
                                decoration: TextDecoration.underline,
                                decorationColor: WhiteColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
