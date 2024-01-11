import 'package:flutter/material.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/views/Cardscreen.dart';
import 'package:new_project/views/Deshboardscreen.dart';
import 'package:new_project/views/Questionscreen.dart';
import 'package:new_project/views/RatingBar.dart';
import 'package:new_project/views/TrophyScreen.dart';

class Bottomscreen extends StatefulWidget {
  const Bottomscreen({Key? key}) : super(key: key);

  @override
  _BottomscreenState createState() => _BottomscreenState();
}

class _BottomscreenState extends State<Bottomscreen> {
  int pageIndex = 0;

  final pages = [
    Deshboardscreen(),
    const Questionscreen(),
    const Trophyscreen(),
    const Ratingscreen(),
    Cardscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(),

        // borderRadius: const BorderRadius.only(
        // topLeft: Radius.circular(20),
        // topRight: Radius.circular(20),
        // ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Color.fromARGB(255, 123, 25, 251),
                    size: 30,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: BlackColor,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.access_time_outlined,
                    color: MixPurple,
                    size: 30,
                  )
                : const Icon(
                    Icons.access_time_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.emoji_events,
                    color: MixPurple,
                    size: 30,
                  )
                : const Icon(
                    Icons.emoji_events,
                    color: BlackColor,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.feedback_rounded,
                    color: MixPurple,
                    size: 30,
                  )
                : const Icon(
                    Icons.feedback_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 4;
              });
            },
            icon: pageIndex == 4
                ? const Icon(
                    Icons.question_answer_rounded,
                    color: MixPurple,
                    size: 30,
                  )
                : const Icon(
                    Icons.question_answer_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
          ),
        ],
      ),
    );
  }
}


// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//           preferredSize: Size.fromHeight(60),
//           child:
//               CommonAppBar(title: "Categories", backgroundColor: WhiteColor)),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 250.0,
//                 width: double.infinity,
//                 child: Card(
//                   elevation: 9,
//                   margin: EdgeInsets.all(10),
//                   child: Column(
//                     children: <Widget>[
//                       ListTile(
//                         title: Row(
//                           children: [
//                             Text(
//                               'Standard 6',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 250),
//                               child: SizedBox(
//                                 height: 35,width: 77,
//                                 child: ElevatedButton(style: ElevatedButton.styleFrom(
//                                   shape: BeveledRectangleBorder(),
//                                   backgroundColor:Color.fromARGB(255, 103, 14, 226)
//                                 ),
//                                   onPressed: (){}, child: Text("New",style: TextStyle(
//                                   fontSize: 13,fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Divider(
//                         thickness: 3,
//                         indent: 15,
//                         endIndent: 15,
//                       ),
//                       SizedBox(
//                         height: 150.0,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: <Widget>[
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(maths),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Maths")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(science),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Science")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(social),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Social")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(english),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("English")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(hindi),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Hindi")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(gujarati),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Gujarati")
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 250.0,
//                 width: double.infinity,
//                 child: Card(
//                   elevation: 9,
//                   margin: EdgeInsets.all(8),
//                   child: Column(
//                     children: <Widget>[
//                       ListTile(
//                         title: Row(
//                           children: [
//                             Text(
//                               'Standard 7',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 250),
//                               child: SizedBox(
//                                 height: 35,width: 77,
//                                 child: ElevatedButton(style: ElevatedButton.styleFrom(
//                                   shape: BeveledRectangleBorder(),
//                                   backgroundColor:Color.fromARGB(255, 103, 14, 226)
//                                 ),
//                                   onPressed: (){}, child: Text("New",style: TextStyle(
//                                   fontSize: 13,fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Divider(
//                         thickness: 3,
//                         indent: 15,
//                         endIndent: 15,
//                       ),
//                       SizedBox(
//                         height: 150.0,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: <Widget>[
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(maths7),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Maths")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(science7),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Science")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(social7),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Scoical")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(english7),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("English")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(hindi7),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Hindi")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(gujarati7),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Gujarati")
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 250.0,
//                 width: double.infinity,
//                 child: Card(
//                   elevation: 9,
//                   margin: EdgeInsets.all(8),
//                   child: Column(
//                     children: <Widget>[
//                       ListTile(
//                         title: Row(
//                           children: [
//                             Text(
//                               'Standard 8',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                              Padding(
//                               padding: const EdgeInsets.only(left: 250),
//                               child: SizedBox(
//                                 height: 35,width: 77,
//                                 child: ElevatedButton(style: ElevatedButton.styleFrom(
//                                   shape: BeveledRectangleBorder(),
//                                   backgroundColor:Color.fromARGB(255, 103, 14, 226)
//                                 ),
//                                   onPressed: (){}, child: Text("New",style: TextStyle(
//                                   fontSize: 13,fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),)),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Divider(
//                         thickness: 3,
//                         indent: 15,
//                         endIndent: 15,
//                       ),
//                       SizedBox(
//                         height: 150.0,
//                         child: ListView(
//                           scrollDirection: Axis.horizontal,
//                           children: <Widget>[
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(maths8),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Maths")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(science8),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Science")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(social8),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Social")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(english8),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("English")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(hindi8),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Hindi")
//                               ],
//                             ),
//                             Column(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {},
//                                   icon: SizedBox(
//                                     height: 90,
//                                     width: 90,
//                                     child: CircleAvatar(
//                                       backgroundImage: AssetImage(gujarati8),
//                                     ),
//                                   ),
//                                 ),
//                                 Text("Gujarati")
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



