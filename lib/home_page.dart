import 'package:flutter/material.dart';

import 'black_button.dart';
import 'white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('Flutter Piaono'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text('do, re, mi'),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: ((context, index) {
                return Stack(
                  children: [
                    Row(children: const [
                      PianoWhiteButton(number: 1),
                      PianoWhiteButton(number: 2),
                      PianoWhiteButton(number: 3),
                      PianoWhiteButton(number: 4),
                      PianoWhiteButton(number: 5),
                      PianoWhiteButton(number: 7),
                      PianoWhiteButton(number: 1),
                    ]),
                    Positioned(
                      left: 40.0,
                      child: Row(
                        children: const [
                          PianoBlackButton(san: 1),
                          PianoBlackButton(san: 2),
                          PianoBlackButton(
                            san: 3,
                            visible: false,
                          ),
                          PianoBlackButton(san: 3),
                          PianoBlackButton(san: 4),
                          PianoBlackButton(san: 5),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
