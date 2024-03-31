import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {
  AudioPlayer audioPlayer = AudioPlayer();

  getAudioFilePath(int index) {
    switch (index) {
      case 0:
        return 'sounds/xyloNote1.wav';
      case 1:
        return 'sounds/xyloNote2.wav';
      case 2:
        return 'sounds/xyloNote3.wav';
      case 3:
        return 'sounds/xyloNote4.wav';
      case 4:
        return 'sounds/xyloNote5.wav';
      case 5:
        return 'sounds/xyloNote6.wav';
      case 6:
        return 'sounds/xyloNote6.wav';
    }
  }

  getColor(int index) {
    switch (index) {
      case 0:
        return Colors.orange;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.pink;
      case 3:
        return Colors.green;
      case 4:
        return Colors.lightBlueAccent;
      case 5:
        return Colors.yellow;
      case 6:
        return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [0, 1, 2, 3, 4, 5, 6]
              .map(
                (index) => XyloButtonWidget(
                  audioFilePath: getAudioFilePath(index),
                  buttonColor: getColor(index),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class XyloButtonWidget extends StatefulWidget {
  const XyloButtonWidget(
      {super.key, required this.audioFilePath, required this.buttonColor});
  final String audioFilePath;
  final Color buttonColor;

  @override
  State<XyloButtonWidget> createState() => _XyloButtonWidgetState();
}

class _XyloButtonWidgetState extends State<XyloButtonWidget> {
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        onTap: () async {
          await audioPlayer.play(AssetSource(widget.audioFilePath));
        },
        child: Container(
          color: widget.buttonColor,
        ),
      ),
    );
  }
}
