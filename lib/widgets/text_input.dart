import 'package:flutter/material.dart';

const primaryColor = MaterialColor(0xFF06f003, {
  50: const Color(0xFF06f003),
  100: const Color(0xFF06f003),
  200: const Color(0xFF06f003),
  300: const Color(0xFF06f003),
  400: const Color(0xFF06f003),
  500: const Color(0xFF06f003),
  600: const Color(0xFF06f003),
  700: const Color(0xFF06f003),
  800: const Color(0xFF06f003),
  900: const Color(0xFF06f003),
});

class TextInput extends StatefulWidget {
    final String label;

    const TextInput({
        super.key,
        required this.label
    });

    @override
    TextInputState createState() {
        return TextInputState();
    }
}

class TextInputState extends State<TextInput> {
    final controller = TextEditingController();

    @override
    Widget build(BuildContext context) {
        return TextField(
            autofocus: true,
            style: const TextStyle(
                color: Colors.white
            ),
            decoration: InputDecoration(
                labelText: widget.label,
                labelStyle: TextStyle(
                    color: Colors.white.withOpacity(0.66)
                ),
                floatingLabelStyle: const TextStyle(
                    color: primaryColor
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 16
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                    borderSide: BorderSide(
                        color: Colors.white.withOpacity(0.25)
                    )
                ),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    borderSide: BorderSide(
                        color: primaryColor
                    )
                ),
            ),
        );
    }
}