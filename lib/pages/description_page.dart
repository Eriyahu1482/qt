import 'package:flutter/material.dart';
import 'package:qt/pages/choose_page.dart';
import 'package:qt/widgets/small_main_page.dart';

class DescriptionPage extends StatelessWidget {
    static const routeName = '/description-page';
  const DescriptionPage({super.key});

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
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Center(
              child: Text('Курс "Программирование с помощью фреймворка Qt"',                                 style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(53, 73, 142, 1),
                    fontSize: 25),)
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Qt - кроссплатформенный фреймворк для создания графических приложений для десктопа, мобильных и встроенных устройств.',                                 
            style: TextStyle(
                  color: Color.fromRGBO(69, 86, 186, 1),
                  fontSize: 20),),
          ),
          const Padding(            
            padding: EdgeInsets.only(right: 235),
            child: Text('Цель курса',
                        style: TextStyle(
                  color: Color.fromRGBO(53, 73, 142, 1),
                  fontSize: 23,
                  fontWeight: FontWeight.bold)),
            ),
            const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Наша цель- научить вам пользоваться данным фреймворком. За время прохождения курса вы познаете все его тонкости и сделаете свои первые работы для портфолио!',                                 
            style: TextStyle(
                  color: Color.fromRGBO(69, 86, 186, 1),
                  fontSize: 16),),
          ),
          const Padding(            
            padding: EdgeInsets.only(right: 235),
            child: Text('Как начать?',
                        style: TextStyle(
                  color: Color.fromRGBO(53, 73, 142, 1),
                  fontSize: 23,
                  fontWeight: FontWeight.bold)),
            ),
            const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text('Чтобы начать прохождения данного курса, вам нужно перейти на вкладку курса, выбрать наставника и в скором времени вам позвонит наставник, чтобы договориться о дате и времени занятия. Ученик и преподаватель самостоятельно договариваются о том как будут проходить уроки.',                                 
            style: TextStyle(
                  color: Color.fromRGBO(69, 86, 186, 1),
                  fontSize: 16),),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 190),
            child: SmallMainButtonWidget(buttonName: 'Перейти к курсу',
              onTap: (){
            Navigator.of(context).pushNamed(ChoosePage.routeName);
              }),
          )
        ],
      ),
    );
  }
}