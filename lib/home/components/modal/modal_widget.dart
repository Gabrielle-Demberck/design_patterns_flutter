import 'package:flutter/material.dart';

import 'modal_page_index_widget.dart';

class ModalWidget extends StatefulWidget {
  const ModalWidget({super.key});

  @override
  State<ModalWidget> createState() => _ModalWidgetState();
}

class _ModalWidgetState extends State<ModalWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      // Atualiza o índice da página atual quando a página muda
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    const containerPadding = EdgeInsets.fromLTRB(20, 50.0, 20, 10);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 120,
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            children: [
              Column(
                children: [
                  Text(
                    'Title',
                    style: textTheme.headlineLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Padding(
                      padding: containerPadding,
                      child: ListView(children: [
                        Text(
                          'title sdaf title',
                          style: textTheme.headlineLarge!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'explanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanation',
                          style: textTheme.bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'title2 sdaf title',
                          style: textTheme.headlineLarge!.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'explanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanationexplanation',
                          style: textTheme.bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Exemplo',
                    style: textTheme.headlineLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Padding(
                      padding: containerPadding,
                      child: ListView(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text(
                            'void main(){ \n\n}',
                            style: textTheme.bodyMedium!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        ModalPageIndexWidget(
          currentPage: _currentPage,
        ),
      ],
    );
  }
}
