import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.mainButtonText,
    required this.callbackTertiary,
    required this.color,
  }) : super(key: key);

  final String mainButtonText;
  final VoidCallback callbackTertiary;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callbackTertiary,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        padding: const EdgeInsets.only(left: 100, top: 20, right: 100, bottom: 20),
      ),
      child: Text(mainButtonText),
    );
  }
}
