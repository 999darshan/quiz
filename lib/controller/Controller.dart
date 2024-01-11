import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:new_project/models/Desh_Model.dart';

class DashboardController extends GetxController {
  final standards = <StandardModel>[
    StandardModel(
      std: 1,
      subject: [
        SubjectModel(subjectName: 'Math', img: 'assets/image/maths.png'),
        SubjectModel(subjectName: 'Science', img: 'assets/image/science.jpeg'),
        SubjectModel(subjectName: 'Social', img: 'assets/image/social.png'),
        SubjectModel(subjectName: 'English', img: 'assets/image/english.jpeg'),
        SubjectModel(subjectName: 'Hindi', img: 'assets/image/hindi.png'),
        SubjectModel(subjectName: 'Gujarati', img: 'assets/image/gujrati.jpeg'),
      ],
    ),
    StandardModel(
      std: 2,
      subject: [
        SubjectModel(subjectName: 'Math', img: 'assets/image/maths7.png'),
        SubjectModel(subjectName: 'Science', img: 'assets/image/science7.jpeg'),
        SubjectModel(subjectName: 'Social', img: 'assets/image/social7.jpeg'),
        SubjectModel(subjectName: 'English', img: 'assets/image/english7.jpeg'),
        SubjectModel(subjectName: 'Hindi', img: 'assets/image/hindi7.jpg'),
        SubjectModel(
            subjectName: 'Gujarati', img: 'assets/image/gujarati7.png'),
      ],
    ),
    StandardModel(
      std: 3,
      subject: [
        SubjectModel(subjectName: 'Math', img: 'assets/image/maths8.png'),
        SubjectModel(subjectName: 'Science', img: 'assets/image/science7.jpeg'),
        SubjectModel(subjectName: 'Social', img: 'assets/image/social8.jpeg'),
        SubjectModel(subjectName: 'English', img: 'assets/image/english8.png'),
        SubjectModel(subjectName: 'Hindi', img: 'assets/image/hindi8.jpg'),
        SubjectModel(
            subjectName: 'Gujarati', img: 'assets/image/gujarati8.png'),
      ],
    ),
    // Add more data as needed
  ].obs;
}
