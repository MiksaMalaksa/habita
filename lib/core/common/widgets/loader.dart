import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: LoadingAnimationWidget.hexagonDots(
      color: Theme.of(context).colorScheme.primary,
      size: MediaQuery.of(context).size.height * 0.1,
    ));
  }
}
