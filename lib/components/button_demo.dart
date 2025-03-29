import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const ButtonDemo({
    required Key key,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: onPressed == null ? Colors.amber.shade400 : Theme.of(context).colorScheme.secondary,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0), // Increased vertical padding
            child: Text(
              text,
              style: onPressed == null
                  ? Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white) // Use larger text style
                  : Theme.of(context).textTheme.titleLarge, // Use larger text style
            ),
          ),
        ),
      ),
    );
  }
}

