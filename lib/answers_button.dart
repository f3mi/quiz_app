import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton({required this.text, required this.onTap, super.key});
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(
          255,
          33,
          1,
          95,
        ),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      onPressed: onTap,
      child: Text(text, textAlign: TextAlign.center,),
    );
  }
}
