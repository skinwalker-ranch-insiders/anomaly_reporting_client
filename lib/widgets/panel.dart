import 'dart:ui';

import 'package:flutter/material.dart';

class Panel extends StatelessWidget {
    final String title;
    final double width;
    final List<Widget> children;
    final List<Widget> actions;

    const Panel({
        super.key,
        required this.title,
        required this.children,
        this.actions = const [],
        this.width = double.infinity
    });

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            width: width,
            child: Column(
                children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)
                        ),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(
                                sigmaY: 12,
                                sigmaX: 12
                            ),
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                    horizontal: 24
                                ),
                                decoration: const BoxDecoration(
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                ),
                                child: Row(
                                    children: [
                                        Text(title,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600
                                            ),
                                        )
                                    ],
                                ),
                            ),
                        ),
                    ),
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(40, 40, 40, 1),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12)
                            )
                        ),
                        child: Column(
                            children: [
                                Container(
                                    padding: const EdgeInsets.all(24),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: children,
                                    ),
                                ),
                                actions.length == 0 ? SizedBox() : Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 24
                                    ),
                                    decoration: BoxDecoration(
                                        border: BorderDirectional(
                                            top: BorderSide(
                                                color: Colors.white.withOpacity(0.25)
                                            )
                                        )
                                    ),
                                    child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: actions,
                                    ),
                                )
                            ],
                        )
                    )
                ],
            ),
        );
    }
}