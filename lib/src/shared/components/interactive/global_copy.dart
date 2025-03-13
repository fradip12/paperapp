import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../assets/colors.gen.dart';
import '../display/global_text.dart';

class GlobalCopy extends StatelessWidget {
  final String value;
  const GlobalCopy({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Clipboard.setData(ClipboardData(text: value));
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: GlobalText.label(
              value: 'Berhasil disalin',
              color: Colors.white,
            ),
          ),
        );
      },
      child: const GlobalText.label(
        value: 'SALIN',
        fontWeight: FontWeight.bold,
        color: ColorName.primary,
      ),
    );
  }
}
