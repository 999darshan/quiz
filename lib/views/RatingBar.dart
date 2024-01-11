import 'package:five_pointed_star/five_pointed_star.dart';
import 'package:flutter/material.dart';
import 'package:new_project/Widget/common_appbar.dart';
import 'package:new_project/Widget/common_button.dart';
import 'package:new_project/Widget/common_textfield.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/views/Bottomscreen.dart';

class Ratingscreen extends StatefulWidget {
  const Ratingscreen({super.key});

  @override
  State<Ratingscreen> createState() => _RatingscreenState();
}

class _RatingscreenState extends State<Ratingscreen> {
  int mycount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppBar(title: "Feedback", backgroundColor: WhiteColor)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Send us your feedback !",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Do you have any suggestion or you found some errors let us know in the fields below",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "How was your experience?",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: FivePointedStar(
                  onChange: (count) {
                    setState(() {
                      mycount = count;
                    });
                  },
                ),
              ),
              // Text(
              //   mycount.toString(),
              //   style: TextStyle(fontWeight: FontWeight.bold),
              // ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Experiance",
                  style: TextStyle(
                      color: MixBlack,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  "Describe your experience",
                  style: TextStyle(
                      color: MixBlack,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: CommonTextFormField(
                  hint: '',
                  lable: '',
                  errorMessage: '',
                  formatter: [],
                  inputType: TextInputType.numberWithOptions(),
                  controller: TextEditingController(),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: SizedBox(
          height: 50,
          child: CommonButton(
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Bottomscreen()));
              },
              title: 'Send feedback')),
    );
  }
}
