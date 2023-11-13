import 'package:design_patterns_flutter/home/view/components/card_widget.dart';
import 'package:design_patterns_flutter/home/view/controller/home_state.dart';
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

  void showModal() {
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
        body: ValueListenableBuilder<HomeState>(
          valueListenable: homeController,
          builder: (context, state, _) {
            if (state is HomeSuccessState) {
              return ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    ExpandedSurfaceWidget(
                      text: state.homeValues!.description,
                    ),
                    ExpandedCardWidget(
                      leadingIcon: Icons.important_devices_sharp,
                      title: state.homeValues!.contents[0],
                      children: CardWidget(
                        onTap: showModal,
                        title: 'Creational',
                        icon: Icons.important_devices_sharp,
                      ),
                    ),
                    ExpandedCardWidget(
                        leadingIcon: Icons.important_devices_sharp,
                        title: state.homeValues!.contents[1],
                        children: ListView.builder(
                            itemCount: 50,
                            itemBuilder: (context, item) {
                              return CardWidget(
                                  onTap: showModal,
                                  title: 'Structural',
                                  icon: Icons.settings_input_composite_rounded);
                            })),
                    ExpandedCardWidget(
                      leadingIcon: Icons.important_devices_sharp,
                      title: state.homeValues!.contents[2],
                      children: CardWidget(
                          onTap: () {},
                          title: 'Behavioral',
                          icon: Icons.all_inbox_rounded),
                    ),
                  ]);
            }
            if (state is HomeErrorState) {
              return Center(
                  child: Text(
                state.errorMessage,
                style: const TextStyle(color: Colors.white),
              ));
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
