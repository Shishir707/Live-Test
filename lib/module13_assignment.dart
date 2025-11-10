import 'package:flutter/material.dart';
import 'ostadWidget.dart';

class CourseInfo extends StatelessWidget {
  CourseInfo({super.key});

  List<Map<String, dynamic>> courseList = [
    {
      'courseName': 'Full Stack Web Development with JavaScript (MERN)',
      'image': 'assets/Mern.jpg',
      'batchName': 'ব্যাচ ১১',
      'seatLeft': '🪑০৬ সিট বাকি',
      'dayLeft': '⏰০৬ দিন বাকি',
    },
    {
      'courseName': 'Full Stack Web Development with Python, Django & React',
      'image': 'assets/python.jpg',
      'batchName': 'ব্যাচ ১১',
      'seatLeft': '🪑০৬ সিট বাকি',
      'dayLeft': '⏰০৬ দিন বাকি',
    },
    {
      'courseName': 'SQA: Manual & Automated Testing',
      'image': 'assets/sqa.jpg',
      'batchName': 'ব্যাচ ১১',
      'seatLeft': '🪑০৬ সিট বাকি',
      'dayLeft': '⏰০৬ দিন বাকি',
    },
    {
      'courseName': 'Full Stack Web Development with ASP.Net Core',
      'image': 'assets/Mern.jpg',
      'batchName': 'ব্যাচ ১১',
      'seatLeft': '🪑০৬ সিট বাকি',
      'dayLeft': '⏰০৬ দিন বাকি',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ostad',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: courseList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.750
        ),
        itemBuilder: (context, index) {
          var course = courseList[index];
          return ostadContainer(image: course['image'],
              batchName: course['batchName'],
              seatLeft: course['seatLeft'],
              dayLeft: course['dayLeft'],
              courseName: course['courseName']);
          //fjgbnsdfalkjgsrdhfsdjfhdsfjkfd
        },
      ),
    );
  }
}
