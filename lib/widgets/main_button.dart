import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final String buttonName;
  final void Function()? onTap;

  const MainButtonWidget({super.key,  
   required this.buttonName,
   required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 260,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(5, 0.5),
            colors: <Color>[
              Color.fromRGBO(69, 86, 186, 1),
              Color.fromRGBO(255, 255, 255, 1),
            ],),),
        child: Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         Text (buttonName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold
          ),)
            ]
          ),
      ),
    );
  }
}