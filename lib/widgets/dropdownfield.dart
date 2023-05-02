import 'package:flutter/material.dart';

class DDF<T> extends StatelessWidget {
  final String labelText;
  final List<DropdownMenuItem<T>> items;
  final T value;
  final ValueChanged<T?> onChanged;
  final FormFieldValidator<T?>? validator;

  DDF({
    required this.labelText,
    required this.items,
    required this.value,
    required this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return FormField<T?>(
      initialValue: value,
      validator: validator,
      builder: (FormFieldState<T?> state) {
        return InputDecorator(
          decoration: InputDecoration(
            labelText: labelText,
            errorText: state.errorText,
            border: OutlineInputBorder(),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<T>(
              value: state.value,
              items: items,
              onChanged: onChanged,
            ),
          ),
        );
      },
    );
  }
}
