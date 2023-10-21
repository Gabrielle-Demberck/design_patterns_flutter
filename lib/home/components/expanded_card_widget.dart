import 'package:flutter/material.dart';

class ExpandedCardWidget extends StatefulWidget {
  final IconData leadingIcon;
  final String title;
  final List<Widget> children;
  const ExpandedCardWidget(
      {super.key,
      required this.leadingIcon,
      required this.title,
      required this.children});

  @override
  State<ExpandedCardWidget> createState() => _ExpandedCardWidgetState();
}

class _ExpandedCardWidgetState extends State<ExpandedCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        color: Colors.black26,
        child: ExpansionTile(
            leading: Icon(widget.leadingIcon),
            backgroundColor: Colors.black,
            title: Text(
              widget.title,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            children: widget.children),
      ),
    );
  }
}
