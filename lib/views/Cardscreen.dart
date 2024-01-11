import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/Widget/common_appbar.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/views/Questionscreen.dart';

class Cardscreen extends StatefulWidget {
  @override
  State<Cardscreen> createState() => _CardscreenState();
}

class _CardscreenState extends State<Cardscreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppBar(
            title: 'Science',
            backgroundColor: WhiteColor,
          )),
      body: ItemList(),
      // Display the selected screen
    ));
  }
}

class ItemList extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {
      'logo_index': '01',
      'logo_image': 'assets/image/number.png',
      'ch_name': 'Ch_1- Khorak kyathi Male che',
      'teacher_logo': 'assets/image/techerlogo.png',
      'teacher_name': 'Shailendrasinh gohil',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '02',
      'logo_image': 'assets/image/number.png',
      'ch_name': 'Ch_2- Aahar na ghatko',
      'teacher_logo': 'assets/image/techerlogo.png',
      'teacher_name': 'Shailendrasinh gohil',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '03',
      'logo_image': 'assets/image/number.png',
      'ch_name': 'Ch_3- Resa Thi Kapad Sudhi',
      'teacher_logo': 'assets/image/techerlogo.png',
      'teacher_name': 'Shailendrasinh gohil',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '04',
      'logo_image': 'assets/image/number.png',
      'ch_name': 'Ch_4- Vastuo Na Juth Banava',
      'teacher_logo': 'assets/image/techerlogo.png',
      'teacher_name': 'Shailendrasinh gohil',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '05',
      'logo_image': 'assets/image/number.png',
      'ch_name': 'Ch_5- Padartho Nu Algikarn',
      'teacher_logo': 'assets/image/techerlogo.png',
      'teacher_name': 'Shailendrasinh gohil',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '06',
      'logo_image': 'assets/image/number.png',
      'ch_name': 'Ch_6- Apni AasPas...',
      'teacher_logo': 'assets/image/techerlogo.png',
      'teacher_name': 'Shailendrasinh gohil',
      'question_no': 15,
      'min': 15,
    },
    {
      'logo_index': '07',
      'logo_image': 'assets/image/number.png',
      'ch_name': 'Ch_7- Vadhare Mahiti',
      'teacher_logo': 'assets/image/techerlogo.png',
      'teacher_name': 'Shailendrasinh gohil',
      'question_no': 15,
      'min': 15,
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];

        return CustomItem(
          logoIndex: item['logo_index'],
          logoImage: item['logo_image'],
          chName: item['ch_name'],
          teacherLogo: item['teacher_logo'],
          teacherName: item['teacher_name'],
          questionNo: item['question_no'],
          min: item['min'],
        );
      },
    );
  }
}

class CustomItem extends StatelessWidget {
  final String logoIndex;
  final String logoImage;
  final String chName;
  final String teacherLogo;
  final String teacherName;
  final int questionNo;
  final int min;

  CustomItem({
    required this.logoIndex,
    required this.logoImage,
    required this.chName,
    required this.teacherLogo,
    required this.teacherName,
    required this.questionNo,
    required this.min,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        color: cardcolor,
        // color: Colors.white,
        elevation: 10,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Get.to(Questionscreen());
          },
          child: ListTile(
            leading: Container(
              child: CircleAvatar(
                backgroundImage: AssetImage(logoImage),
                child: Text(
                  logoIndex,
                  style: TextStyle(color: WhiteColor),
                ),
              ),
            ),
            title: Text(
              chName,
              style: TextStyle(
                  color: BlackColor, fontSize: 13, fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      backgroundImage: AssetImage(teacherLogo),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      teacherName,
                      style: TextStyle(fontSize: 12, color: BlackColor),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1,
                  color: BlackColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(height: 14, width: 20, child: Image.asset(quee)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Que: $questionNo',
                      style: TextStyle(fontSize: 12, color: BlackColor),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(height: 14, width: 20, child: Image.asset(timee)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Min: $min',
                      style: TextStyle(fontSize: 12, color: BlackColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
