import 'package:flutter/material.dart';
import 'package:tun_app/widgets/tune_item.dart';
import 'package:tun_app/models/tune_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.blueGrey, sound: 'note1.wav'),
    TuneModel(color: Color.fromARGB(255, 6, 36, 51), sound: 'note2.wav'),
    TuneModel(color: Color.fromARGB(255, 45, 194, 171), sound: 'note3.wav'),
    TuneModel(color: Color.fromARGB(255, 57, 160, 110), sound: 'note4.wav'),
    TuneModel(color: Color.fromARGB(255, 65, 130, 42), sound: 'note5.wav'),
    TuneModel(color: Color.fromARGB(255, 204, 145, 56), sound: 'note6.wav'),
    TuneModel(color: Color.fromARGB(255, 165, 74, 35), sound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
        titleSpacing: 140,
      ),
      body: Column(
        children: tunes
            .map(
              (e) => TuneItem(tunM: e),
            )
            .toList(),
      ),
    );
  }
}
