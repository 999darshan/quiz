import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/Widget/common_button.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/views/Deshboardscreen.dart';
import 'package:new_project/views/TrophyScreen.dart';

class Questionscreen extends StatelessWidget {
  const Questionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160,
        backgroundColor: MixPurple,
        centerTitle: true,
        title: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 5),
                child: Text(
                  'Unit 1. Khorak Kyathi Male Che',
                  style: TextStyle(
                      fontSize: 15,
                      color: WhiteColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Text(
                      'Que 2/15',
                      style: TextStyle(
                          fontSize: 10,
                          color: WhiteColor,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 85,
                    ),
                    Icon(
                      Icons.timer_outlined,
                      color: WhiteColor,
                      size: 20,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      '00:50',
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 10,
                          color: WhiteColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lassi, Paratha, & Paneer Mixrit Sabji Ae ",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: WhiteColor),
                  ),
                  Text(
                    "kaya rajayna loko no mukhy khorak che.?",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: WhiteColor),
                  ),
                ],
              )
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(27),
          ),
        ),
        leading: InkWell(
            onTap: () {},
            child: IconButton(
              color: WhiteColor,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_rounded,
              ),
            )),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 400,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      side: BorderSide()),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Myrating()));
                  },
                  child: (Text(
                    "A : Gujarat",
                    style: TextStyle(
                        fontSize: 15,
                        color: BlackColor,
                        fontWeight: FontWeight.w400),
                  ))),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      side: BorderSide()),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Myrating()));
                  },
                  child: (Text(
                    "B : Maharashtra",
                    style: TextStyle(
                        fontSize: 15,
                        color: BlackColor,
                        fontWeight: FontWeight.w400),
                  ))),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: mixred,
                      side: BorderSide()),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Myrating()));
                  },
                  child: (Text(
                    "C : Rajasthan",
                    style: TextStyle(
                        fontSize: 15,
                        color: BlackColor,
                        fontWeight: FontWeight.w400),
                  ))),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 45,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: mixgreen,
                      side: BorderSide()),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Myrating()));
                    Get.to(Trophyscreen());
                  },
                  child: (Text(
                    "D : Punjab",
                    style: TextStyle(
                        fontSize: 15,
                        color: BlackColor,
                        fontWeight: FontWeight.w400),
                  ))),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 40,
          child: CommonButton(
              onPress: () {
                Get.to(Deshboardscreen());
              },
              title: "Next")),
    );
  }
}
