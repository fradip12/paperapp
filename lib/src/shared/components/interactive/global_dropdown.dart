import 'package:flutter/material.dart';

class GlobalDropdown<T> extends StatelessWidget {
  final String? hintText;
  final List<DropdownMenuItem<T>>? items;
  final T? value;
  final void Function(T?)? onChanged;
  final String? errorText;
  final bool isRequired;

  const GlobalDropdown({
    super.key,
    this.hintText,
    this.items,
    this.value,
    this.onChanged,
    this.errorText,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ButtonTheme(
          alignedDropdown: true,
          child: DropdownButtonFormField<T>(
            value: value,
            items: items,
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 8,
              ),
              border: InputBorder.none,
              isDense: true,
            ),
            icon: const Icon(Icons.keyboard_arrow_down),
            isExpanded: true,
            dropdownColor: Colors.white,
          ),
        ),
        if (errorText != null) ...[
          const SizedBox(height: 4),
          Text(
            errorText!,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 12,
            ),
          ),
        ],
      ],
    );
  }
}
