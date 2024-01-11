// Image_Upload_Controller:
// ------------------------------------


// import 'dart:convert';
// import 'dart:io';
// import 'package:image_picker/image_picker.dart';
// import 'package:http/http.dart' as http;
// import 'package:get/get.dart';

// class PhotoController extends GetxController {
//   Rx<File?> selectedImage = Rx<File?>(null);

//   Future<void> pickImage() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       selectedImage.value = File(pickedFile.path);
//     }
//   }

//   Future<void> uploadImage() async {
//     if (selectedImage.value == null) return;

//     // Replace 'YOUR_UPLOAD_URL' with the actual URL where you want to upload the image
//     final uploadUrl = Uri.parse('YOUR_UPLOAD_URL');

//     List<int> imageBytes = selectedImage.value!.readAsBytesSync();
//     String base64Image = base64Encode(imageBytes);

//     final response = await http.post(
//       uploadUrl,
//       body: {
//         'image': base64Image,
//       },
//     );

//     // Handle the response as needed
//     print(response.body);
//   }
// }



// SignUpScreen.dart :
// ----------------------------------

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:mvc_stc/Views/Emailscree.dart';
// import 'package:mvc_stc/Widgets/common_appbar.dart';
// import 'package:mvc_stc/Widgets/common_textfield.dart';
// import '../Controller/image_upload_controller.dart';
// import '../Controller/signup_controller.dart';
// import '../Utils/utility.dart';
// import '../Widgets/common_button.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final SignUpController _controller = Get.put(SignUpController());

//   final PhotoController photoController = Get.put(PhotoController());

//   int selectedValue = 1;

//   int selectedname = 1;

//   int selectedjob = 1;

//   final _key = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//           preferredSize: Size.fromHeight(50),
//           child: CommonAppBar(
//               title: "Update Your Profile", backgroundColor: Colors.white)),
//       body: SingleChildScrollView(
//         child: Center(
//           child: Form(
//             key: _key,
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 15,
//                 ),
//                 GestureDetector(
//                   onTap: photoController.pickImage,
//                   child: Obx(() {
//                     return (photoController.selectedImage.value == null)
//                         ? CircleAvatar(
//                             radius: 50,
//                             backgroundColor: Colors.grey,
//                             child: Image.asset('images/add_pic_icon.png'),
//                           )
//                         : CircleAvatar(
//                             radius: 50,
//                             backgroundImage:
//                                 FileImage(photoController.selectedImage.value!),
//                           );
//                   }),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 SizedBox(
//                   height: 110,
//                   width: 450,
//                   child: CommonTextFormField(
//                     hint: 'Add Your Surname',
//                     lable: 'First Name ',
//                     inputType: TextInputType.name,
//                     errorMessage: 'PLease enter your first name',
//                     formatter: [],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 110,
//                   width: 450,
//                   child: CommonTextFormField(
//                     hint: 'Add your Middle Name',
//                     inputType: TextInputType.name,
//                     lable: 'Middle Name ',
//                     formatter: [],
//                     errorMessage: 'PLease enter your last name',
//                   ),
//                 ),
//                 SizedBox(
//                   height: 110,
//                   width: 450,
//                   child: CommonTextFormField(
//                     isEmailField: true,
//                     hint: 'Enter Email Id Here',
//                     inputType: TextInputType.name,
//                     lable: 'Email ',
//                     formatter: [],
//                     errorMessage: 'Enter your email id',
//                   ),
//                 ),
//                 SizedBox(
//                   height: 110,
//                   width: 450,
//                   child: CommonTextFormField(
//                     hint: 'Add Your Mobile Number',
//                     inputType: TextInputType.name,
//                     lable: 'Mobile ',
//                     formatter: [],
//                     errorMessage: 'PLease enter your mobile number',
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 60,
//                       width: 220,
//                       child: DropdownButton(
//                           isExpanded: true,
//                           value: selectedValue,
//                           items: [
//                             DropdownMenuItem(
//                               child: Text(
//                                 "Gender",
//                                 style: TextStyle(fontSize: 20),
//                               ),
//                               value: 1,
//                             ),
//                             DropdownMenuItem(
//                               child: Text("Female"),
//                               value: 2,
//                             ),
//                             DropdownMenuItem(
//                               child: Text("Other"),
//                               value: 3,
//                             ),
//                           ],
//                           onChanged: (value) {
//                             setState(() {
//                               selectedValue = value!;
//                             });
//                           }),
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),
//                     Container(
//                       height: 60,
//                       width: 220,
//                       child: Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(00, 00, 10, 00),
//                           child: InkWell(
//                             onTap: () {
//                               Utility.showDatePickerDialog().then((pickedDate) {
//                                 if (pickedDate != null) {
//                                   _controller.chnageBirthDate(
//                                       "${pickedDate.toLocal()}".split(' ')[0]);
//                                 }
//                               });
//                             },
//                             child: InputDecorator(
//                                 decoration: InputDecoration(
//                                     labelText: 'BirthDate',
//                                     labelStyle: TextStyle(color: Colors.grey)),
//                                 child: Obx(() =>
//                                     Text(_controller.selectedBirthDate.value))),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   height: 60,
//                   width: 450,
//                   child: DropdownButton(
//                       isExpanded: true,
//                       value: selectedValue,
//                       items: [
//                         DropdownMenuItem(
//                           child: Text(
//                             "Post",
//                             style: TextStyle(fontSize: 20),
//                           ),
//                           value: 1,
//                         ),
//                         DropdownMenuItem(
//                           child: Text("Teacher"),
//                           value: 2,
//                         ),
//                         DropdownMenuItem(
//                           child: Text("Other"),
//                           value: 3,
//                         ),
//                       ],
//                       onChanged: (value) {
//                         setState(() {
//                           selectedValue = value!;
//                         });
//                       }),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       bottomNavigationBar: SizedBox(
//           height: 40,
//           child: CommonButton(
//               onPress: () async {
//                 if (_key.currentState!.validate()) {
//                   Get.to(() => EmailScreen());
//                 }
//               },
//               title: 'Update')),
//     );
//   }
// }







