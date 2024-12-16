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
      onTap: () {
        // Ваш обработчик нажатия
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 0.7),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Цвет тени
              spreadRadius: 2, // Распространение тени
              blurRadius: 8, // Размытие тени
              offset: const Offset(0, 4), // Смещение тени
            ),
          ],
        ),
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
                child: Image.asset(people.peopleUrl),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Text(
                      people.peopleName,
                      style: const TextStyle(
                        color: Color.fromRGBO(53, 73, 142, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 14),
                child: ArrowButtonWidget(onTap: () {
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
