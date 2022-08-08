import 'package:flutter/material.dart';

class LogoWithText extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Row(
            children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'),
                          fit: BoxFit.contain,
                          filterQuality: FilterQuality.medium
                      )
                  ),
                ),
                SizedBox(width: 12),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('SKINWALKER RANCH',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),
                        ),
                        Text('INSIDER REPORTS',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 13
                            ),
                        )
                    ],
                )
            ],
        );
    }
}