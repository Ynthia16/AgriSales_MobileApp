import 'package:flutter/material.dart';

class TappedEffect extends StatefulWidget {
  const TappedEffect({super.key});

  @override
  State<TappedEffect> createState() => _TappedEffectState();
}

class _TappedEffectState extends State<TappedEffect> {
  bool _isTapped = false;
  void _changecolor() {
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return const InkWell(
      
    );
  }
}
