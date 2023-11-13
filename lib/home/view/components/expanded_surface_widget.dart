import 'package:flutter/material.dart';

class ExpandedSurfaceWidget extends StatefulWidget {
  final String text;
  const ExpandedSurfaceWidget({super.key, required this.text});

  @override
  State<ExpandedSurfaceWidget> createState() => _ExpandedSurfaceWidgetState();
}

class _ExpandedSurfaceWidgetState extends State<ExpandedSurfaceWidget> {
  int? maxLines = 6;
  double heightContainer = 200;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeIn,
      color: Colors.black45,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      duration: const Duration(milliseconds: 400),
      height: heightContainer,
      child: ListView(
        children: [
          Text(
            widget.text,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
            maxLines: maxLines,
            overflow: TextOverflow.clip,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black54,
              ),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isOpen = !isOpen;
                    if (isOpen == true) {
                      maxLines = 21;
                      heightContainer = 505;
                    } else {
                      maxLines = 5;
                      heightContainer = 190;
                    }
                  });
                },
                icon: Icon(isOpen ? Icons.remove : Icons.add,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
