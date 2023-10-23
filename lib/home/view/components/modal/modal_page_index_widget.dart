import 'package:flutter/material.dart';

class ModalPageIndexWidget extends StatelessWidget {
  final int currentPage;
  const ModalPageIndexWidget({super.key, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: currentPage == 0 ? Colors.white : Colors.white54,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: currentPage == 1 ? Colors.white : Colors.white54,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
