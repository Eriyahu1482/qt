import 'package:flutter/material.dart';
import 'package:qt/models/people_model.dart';
import 'package:qt/widgets/small_card_widget.dart';

class TeacherPage extends StatelessWidget {
  static const routeName = '/teacher-page';
  const TeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Center(
            child: Image.asset('assets/logo.png', height: 40), 
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/bellIcon.png', width: 24, height: 24),
            onPressed: () {
              
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      backgroundColor: const Color.fromRGBO(235, 241, 255, 1),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Center(
                      child: SizedBox(
                        width: double.infinity,
                        height: 400,
                        child: ListView.separated(
                          itemCount: teacherMiniData.length,
                          itemBuilder: (context, index) {
                            return SmallCardWidget(people: teacherMiniData[index]);
                          },
                          separatorBuilder: (_, index) =>
                              const SizedBox(height: 15),
                        ),
                      ),
                    ),
                  ),
        ],
        )
        )
        );
  }
}