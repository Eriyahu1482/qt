import 'package:flutter/material.dart';
import 'package:qt/models/people_model.dart';
import 'package:qt/widgets/arrow_button_widget.dart';

class SmallCardWidget extends StatelessWidget {
  final People people;

  const SmallCardWidget({
    super.key,
    required this.people,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
         
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.7),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 2,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.zero,
                  width: 100,
                  height: 100,
                  child: Image.asset(people.peopleUrl)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(people.peopleName,
                        style: const TextStyle(
                            color: Color.fromRGBO(53, 73, 142, 1),
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 5,),
                  
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: ArrowButtonWidget(onTap: (){
                  
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}