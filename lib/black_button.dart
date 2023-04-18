import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PianoBlackButton extends StatelessWidget {
  const PianoBlackButton({Key? key, this.visible = true, required this.san})
      : super(key: key);
  final int san;
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 65,
        height: 140,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.resolveWith((states) => Colors.black),
              overlayColor: MaterialStateProperty.resolveWith((states) {
                return states.contains(MaterialState.pressed)
                    ? Colors.white70
                    : null;
              }),
            ),
            onPressed: () {
              AudioPlayer().play(
                AssetSource('notes/note$san.wav'),
              );
            },
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20.0),
                child: Text('f3'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
