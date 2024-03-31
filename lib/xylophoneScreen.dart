import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneScreen extends StatefulWidget {
  const XylophoneScreen({super.key});

  @override
  State<XylophoneScreen> createState() => _XylophoneScreenState();
}

class _XylophoneScreenState extends State<XylophoneScreen> {
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: () async {
                  await audioPlayer.play(AssetSource('sounds/xyloNote1.wav'));
                },
                child: Container(
                  color: Colors.orange,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  await audioPlayer.play(AssetSource('sounds/xyloNote2.wav'));
                },
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  await audioPlayer.play(AssetSource('sounds/xyloNote3.wav'));
                },
                child: Container(
                  color: Colors.pink,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  await audioPlayer.play(AssetSource('sounds/xyloNote4.wav'));
                },
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  await audioPlayer.play(AssetSource('sounds/xyloNote5.wav'));
                },
                child: Container(
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  await audioPlayer.play(AssetSource('sounds/xyloNote6.wav'));
                },
                child: Container(
                  color: Colors.yellow,
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () async {
                  await audioPlayer.play(AssetSource('sounds/xyloNote7.wav'));
                },
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
