import 'dart:ui';

import 'package:anomaly_reporting_client/widgets/logo_with_text.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {

    const AppHeader({
        super.key,
    });

    @override
    Widget build(BuildContext context) {
        return Container(
            height: 72,
            child: ClipRect(
                child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaY: 12,
                        sigmaX: 12
                    ),
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 24
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 0.1),
                        ),
                        child: LogoWithText()
                    ),
                ),
            )
        );
    }
}