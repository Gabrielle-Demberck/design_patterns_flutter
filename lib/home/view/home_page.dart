import 'package:design_patterns_flutter/home/view/components/card_widget.dart';
import 'package:flutter/material.dart';

import 'controller/home_controller.dart';
import 'components/expanded_card_widget.dart';
import 'components/expanded_surface_widget.dart';
import 'components/modal/modal_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController.getHomeElement();
  }

  void ShowModal() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.black,
      barrierColor: Colors.white70,
      context: context,
      builder: (BuildContext context) =>
          const FractionallySizedBox(heightFactor: 0.8, child: ModalWidget()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF804dfe),
            Colors.pinkAccent,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 100,
          title: Text(
            'Design Patterns',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            children: [
              const ExpandedSurfaceWidget(),
              ExpandedCardWidget(
                leadingIcon: Icons.important_devices_sharp,
                title: 'Creational',
                children: [
                  CardWidget(
                    onTap: ShowModal,
                    title: 'Creational',
                    icon: Icons.important_devices_sharp,
                  ),
                  CardWidget(
                    onTap: ShowModal,
                    title: 'Creational',
                    icon: Icons.important_devices_sharp,
                  ),
                ],
              ),
              ExpandedCardWidget(
                leadingIcon: Icons.important_devices_sharp,
                title: 'Structural',
                children: [
                  CardWidget(
                      onTap: ShowModal,
                      title: 'Structural',
                      icon: Icons.settings_input_composite_rounded),
                  CardWidget(
                      onTap: ShowModal,
                      title: 'Structural',
                      icon: Icons.settings_input_composite_rounded),
                  CardWidget(
                      onTap: () {},
                      title: 'Structural',
                      icon: Icons.settings_input_composite_rounded),
                ],
              ),
              ExpandedCardWidget(
                leadingIcon: Icons.important_devices_sharp,
                title: 'Behavioral',
                children: [
                  CardWidget(
                      onTap: () {},
                      title: 'Behavioral',
                      icon: Icons.all_inbox_rounded),
                  CardWidget(
                      onTap: () {},
                      title: 'Behavioral',
                      icon: Icons.all_inbox_rounded),
                ],
              ),
            ]),
      ),
    );
  }
}
