import 'package:flutter/material.dart';
import 'package:qt/widgets/choose_widget.dart';

class ChoosePage extends StatelessWidget {
    static const routeName = '/choose-page';
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(235, 241, 255, 1),
      body: Column(
        children: [
          const SizedBox(height: 50,),
          Center(
              child: Image.asset('assets/logo.png'),
          ),
          const SizedBox(height: 170,),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text('Прогресс прохождения курса',
              textAlign: TextAlign.center,                                 
              style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(53, 73, 142, 1),
                    fontSize: 27),)
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('На данный момент у вас действующих учеников, чтобы отслеживать прогресс курса.',  
            textAlign: TextAlign.center,                                 
            style: TextStyle(
                  color: Color.fromRGBO(69, 86, 186, 1),
                  fontSize: 20),),
          ),
          const SizedBox(height: 10,),
          Center(
            child: ChooseWidget(buttonName: 'Выбрать наставника',
              onTap: (){
            
              }),
          ),
          const SizedBox(height: 10,),
          Center(
            child: ChooseWidget(buttonName: 'Код-приглашение',
              onTap: (){
            
              }),
          ),
        ],
      ),
    );
  }
}