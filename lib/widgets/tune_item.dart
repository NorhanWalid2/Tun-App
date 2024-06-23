import 'package:flutter/material.dart';
import 'package:tun_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tunM});
  final TuneModel tunM;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunM.playSound();
        },
        child: Container(
          color: tunM.color,
        ),
      ),
    );
  }
}
