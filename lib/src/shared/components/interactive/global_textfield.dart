import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../extension/ext_dimens.dart';
import '../../extension/ext_theme.dart';
import '../../utils/u_debounce.dart';

import '../../assets/colors.gen.dart';

enum FieldStatus {
  initial,
  valid,
  invalid;

  Icon? get icon {
    return switch (this) {
      FieldStatus.valid => const Icon(Icons.check, color: Colors.green),
      FieldStatus.invalid => const Icon(Icons.close, color: Colors.red),
      _ => null,
    };
  }
}

class GlobalTextField extends StatefulWidget {
  final String? value;
  final String? hintText;
  final String? errorText;
  final FieldStatus status;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final List<TextInputFormatter> inputFormatters;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int minLines;
  final int maxLines;
  final bool isReadOnly;
  final ValueChanged<String?>? onChanged;
  final VoidCallback? onTap;

  const GlobalTextField({
    super.key,
    this.value,
    this.hintText,
    this.errorText,
    this.status = FieldStatus.initial,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.inputFormatters = const <TextInputFormatter>[],
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.minLines = 1,
    this.maxLines = 1,
    this.isReadOnly = false,
    this.onChanged,
    this.onTap,
  });

  @override
  State<GlobalTextField> createState() => _GlobalTextFieldState();
}

class _GlobalTextFieldState extends State<GlobalTextField> {
  final Debounce _debouncer = Debounce(milliseconds: 300);
  final _fieldController = TextEditingController();
  final _fieldFormKey = GlobalKey<FormState>();

  late FieldStatus _status;
  late double _multiplier;

  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      _fieldController.text = widget.value!;
    }

    _status = widget.status;
    _multiplier = widget.maxLines > 1 ? 1 : 2;
  }

  void _validateField(String? value) {
    if (widget.validator != null) {
      widget.validator?.call(value);
      if (_fieldFormKey.currentState?.validate() ?? false) {
        setState(() => _status = FieldStatus.valid);
      } else {
        setState(() => _status = FieldStatus.invalid);
      }
    }
  }

  @override
  void didUpdateWidget(covariant GlobalTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      if (widget.value != null) {
        _fieldController.text = widget.value!;
      }
    }
  }

  @override
  void dispose() {
    _debouncer.dispose();
    _fieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fieldFormKey,
      child: TextFormField(
        controller: _fieldController,
        decoration: InputDecoration(
          hintText: widget.hintText,
          errorText: widget.errorText,
          errorMaxLines: 2,
          suffixIcon: widget.suffixIcon ?? widget.status.icon ?? _status.icon,
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: EdgeInsets.all(context.spacingMd),
                  child: widget.prefixIcon,
                )
              : null,
          border: context.inputBorder.copyWith(
            borderRadius: (context.spacingMd * _multiplier).borderRadius,
            borderSide: const BorderSide(color: ColorName.grayLight),
          ),
          enabledBorder: context.inputBorder.copyWith(
            borderRadius: (context.spacingMd * _multiplier).borderRadius,
            borderSide: const BorderSide(color: ColorName.grayLight),
          ),
          focusedBorder: context.focusedInputBorder.copyWith(
            borderRadius: (context.spacingMd * _multiplier).borderRadius,
          ),
          errorBorder: context.errorInputBorder.copyWith(
            borderRadius: (context.spacingMd * _multiplier).borderRadius,
          ),
          focusedErrorBorder: context.errorInputBorder.copyWith(
            borderRadius: (context.spacingMd * _multiplier).borderRadius,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: context.spacingMd,
            vertical: context.spacingSm,
          ),
        ),
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        inputFormatters: widget.inputFormatters,
        validator: widget.validator,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        readOnly: widget.isReadOnly,
        onTap: widget.onTap,
        onChanged: (String value) {
          _debouncer.run(() {
            widget.onChanged?.call(value);
            _validateField(value);
          });
        },
      ),
    );
  }
}
