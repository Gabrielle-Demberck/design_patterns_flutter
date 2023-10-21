import 'package:flutter/material.dart';

class ExpandedSurfaceWidget extends StatefulWidget {
  const ExpandedSurfaceWidget({super.key});

  @override
  State<ExpandedSurfaceWidget> createState() => _ExpandedSurfaceWidgetState();
}

class _ExpandedSurfaceWidgetState extends State<ExpandedSurfaceWidget> {
  int? maxLines = 4;
  double heightContainer = 200;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.decelerate,
      color: Colors.black54,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      duration: const Duration(milliseconds: 400),
      height: heightContainer,
      child: ListView(
        children: [
          Text(
            'Design Patterns ExplaDesign Patterns Explanation..Design Patterns Explanation.. PatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDes ignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesignPatDesign Patterns Explanation..nsDeDesign Patterns Explanation..Design Patterns Explanation..xplanation..Design Patterns Explanation.',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: maxLines,
          ),
          Container(
            color: Colors.black,
            child: IconButton(
              padding: const EdgeInsets.symmetric(vertical: 15),
              onPressed: () {
                setState(() {
                  isOpen = !isOpen;
                  if (isOpen == true) {
                    maxLines = 200;
                    heightContainer = 500;
                  } else {
                    maxLines = 4;
                    heightContainer = 190;
                  }
                });
              },
              icon:
                  Icon(isOpen ? Icons.remove : Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
