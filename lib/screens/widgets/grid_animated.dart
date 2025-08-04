import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class GridAnimated extends StatefulWidget {
  final bool useRepaintBoundary;

  const GridAnimated({super.key, required this.useRepaintBoundary});

  @override
  State<GridAnimated> createState() => _GridAnimatedState();
}

class _GridAnimatedState extends State<GridAnimated> {
  late Timer _timer;
  final List<Color> _colors = List.generate(30, (_) => _randomColor());

  static Color _randomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      setState(() {
        for (int i = 0; i < _colors.length; i++) {
          _colors[i] = _randomColor();
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget _buildBox(Color color) {
    final box = Container(width: 40, height: 40, color: color);
    return Padding(
      padding: const EdgeInsets.all(4),
      child: widget.useRepaintBoundary ? RepaintBoundary(child: box) : box,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _colors.map(_buildBox).toList(),
    );
  }
}
