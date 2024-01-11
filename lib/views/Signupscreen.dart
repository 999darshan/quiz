import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/Widget/common_appbar.dart';
import 'package:new_project/Widget/common_button.dart';
import 'package:new_project/Widget/common_dropdown.dart';
import 'package:new_project/Widget/common_textfield.dart';
import 'package:new_project/controller/Image_controller.dart';
import 'package:new_project/utils/Constanc.dart';
import 'package:new_project/utils/Utility.dart';
import 'package:new_project/views/Bottomscreen.dart';
import '../controller/Singup_controller.dart';

class Singupscreen extends StatelessWidget {
  Singupscreen({super.key, required this.mobileNumber});

  final String mobileNumber;

  final TextEditingController _firstNameController = TextEditingController();

  final TextEditingController _lastNameController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _mobileController = TextEditingController();

  final SignUpController _controller = Get.put(SignUpController());

  final Photocontroller PhotoController = Get.put(Photocontroller());

  int selectedValue = 1;

  int selectedname = 1;

  int selectedjob = 1;

  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _mobileController.text = mobileNumber;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: CommonAppBar(
              title: "Update Your Profile", backgroundColor: WhiteColor)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              key: _key,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: PhotoController.pickImage,
                    child: Obx(() {
                      return (PhotoController.selectedImage.value == null)
                          ? CircleAvatar(
                              radius: 50,
                              backgroundColor: grey,
                              child: Image.asset(AddPic),
                            )
                          : CircleAvatar(
                              radius: 50,
                              backgroundImage: FileImage(
                                  PhotoController.selectedImage.value!),
                            );
                    }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 110,
                    width: 450,
                    child: CommonTextFormField(
                      controller: _firstNameController,
                      hint: 'Add Your Surname',
                      lable: 'First Name ',
                      inputType: TextInputType.name,
                      errorMessage: 'PLease enter your first name',
                      formatter: [],
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    width: 450,
                    child: CommonTextFormField(
                      controller: _lastNameController,
                      hint: 'Add your Middle Name',
                      lable: 'Middle Name ',
                      errorMessage: 'PLease enter your last name',
                      formatter: [],
                      inputType: TextInputType.name,
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    width: 450,
                    child: CommonTextFormField(
                      controller: _emailController,
                      isEmailField: true,
                      hint: 'Enter Email Id Here',
                      inputType: TextInputType.name,
                      lable: 'Email ',
                      formatter: [],
                      errorMessage: 'Enter your email id',
                    ),
                  ),
                  SizedBox(
                    height: 110,
                    width: 450,
                    child: CommonTextFormField(
                      controller: _mobileController,
                      hint: 'Add Your Mobile Number',
                      inputType: TextInputType.name,
                      lable: 'Mobile ',
                      isMobileNumber: true,
                      isReadOnly: true,
                      formatter: [mobileNumberFormater, mobileLengthFormatter],
                      errorMessage: 'PLease enter your mobile number',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SizedBox(
                          width: (MediaQuery.of(context).size.width / 2 - 10),
                          child: Flexible(
                            child: Obx(
                              () => CommonDropdown(
                                value: _controller.selectedGender.value,
                                items: ['Male', 'Female', 'Other'],
                                labelText: 'Gender',
                                hintText: 'Select gender',
                                onChanged: (value) {
                                  _controller.selectedGender(value);
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please select a gender";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Expanded(
                          child: SizedBox(
                            child: InkWell(
                              onTap: () {
                                Utility.showDatePickerDialog()
                                    .then((pickedDate) {
                                  if (pickedDate != null) {
                                    _controller.chnageBirthDate(
                                        "${pickedDate.toLocal()}"
                                            .split(' ')[0]);
                                    print('2');
                                  }
                                });
                              },
                              child: InputDecorator(
                                  decoration: const InputDecoration(
                                      labelText: 'BirthDate',
                                      labelStyle: TextStyle(
                                          color: BlackColor, fontSize: 15)),
                                  child: Obx(() => Text(
                                        _controller.selectedBirthDate.value,
                                        maxLines: 1,
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            overflow: TextOverflow.clip),
                                      ))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1,
                    child: Obx(
                      () => CommonDropdown(
                        value: _controller.selectedDesignation.value,
                        items: ["Freshers", "Experianced", "Well Experianceds"],
                        labelText: 'Designation',
                        hintText: 'Select Designation',
                        onChanged: (value) {
                          _controller.selectedDesignation(value);
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please select a Designation";
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
          height: 50,
          child: CommonButton(
              onPress: () async {
                if (_key.currentState!.validate()) {
                  if (_controller.selectedBirthDate.value == 'Select Date') {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Please select date',
                            style: TextStyle(fontSize: 15)),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  } else
                    Get.to(() => Bottomscreen());
                }
              },
              title: 'Update')),
    );
  }

  void Changebirthdate(String split) {}
}
