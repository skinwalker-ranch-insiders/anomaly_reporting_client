import 'dart:ui';

import 'package:flutter/material.dart';

class LogoCrest extends StatelessWidget {
  final double size;
  final double opacity;

  const LogoCrest({
    this.size = 222,
    this.opacity = 0.5,
    Key? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size,
        height: size,
        child: ClipOval(
          child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10
              ),
              child: Opacity(
                opacity: opacity,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/crest.png'),
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.medium
                      )
                  ),
                ),
              )
          ),
        )
    );
  }
}