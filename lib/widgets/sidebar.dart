import 'dart:ui';

import 'package:anomaly_reporting_client/widgets/logo_with_text.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: 240,
            child: ClipRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaY: 16,
                        sigmaX: 16
                    ),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 24
                        ),
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.1),
                        ),
                        child: Column(
                            children: [
                                SizedBox(
                                    height: 72,
                                    child: Center(
                                        child: LogoWithText(),
                                    ),
                                )
                            ],
                        )
                    ),
                ),
            ),
        );
    }
}