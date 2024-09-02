import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  final double size;
  final bool value;
  final ValueChanged<bool?>? onChanged;

  CustomCheckbox({
    required this.size,
    required this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: size,
      child: Theme(
        data: ThemeData(
          checkboxTheme: CheckboxThemeData(
            side: BorderSide(color: Color(0xFFCCCCCC)), // Color of the checkbox border
          ),
        ),
        child: Checkbox(
          value: value,
          onChanged: onChanged,
          fillColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.orange; // Color when checkbox is active (checked)
              }
              return null; // Default fill color when checkbox is not active (unchecked)
            },
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Simple edges
          ),
        ),
      ),
    );
  }
}