import 'package:flutter/material.dart';
import '../../theme/lulu_theme.dart';
import '../../tokens/lulu_spacing.dart';

/// Lulu Design System — Input
///
/// 示例见 [lulu_input_sample.dart]
class LuluInput extends StatelessWidget {
  final TextEditingController? controller;
  final String? placeholder;
  final String? label;
  final String? errorText;
  final Widget? leading;   // 左侧图标
  final Widget? trailing;  // 右侧图标/按钮
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final bool enabled;
  final int? maxLines;
  final FocusNode? focusNode;

  const LuluInput({
    super.key,
    this.controller,
    this.placeholder,
    this.label,
    this.errorText,
    this.leading,
    this.trailing,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.onEditingComplete,
    this.enabled = true,
    this.maxLines = 1,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);
    final hasError = errorText != null && errorText!.isNotEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: TextStyle(
              color: theme.textSecondary,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: LuluSpacing.xs),
        ],
        Container(
          decoration: BoxDecoration(
            color: theme.surface,
            borderRadius: BorderRadius.circular(LuluSpacing.radiusMd),
            border: Border.all(
              color: hasError ? theme.error : theme.border,
              width: 1.5,
            ),
          ),
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            obscureText: obscureText,
            keyboardType: keyboardType,
            textInputAction: textInputAction,
            onChanged: onChanged,
            onEditingComplete: onEditingComplete,
            enabled: enabled,
            maxLines: maxLines,
            style: TextStyle(
              color: theme.textPrimary,
              fontSize: 15,
            ),
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: TextStyle(color: theme.textTertiary, fontSize: 15),
              prefixIcon: leading != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 12, right: 8),
                      child: leading,
                    )
                  : null,
              suffixIcon: trailing != null
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8, right: 12),
                      child: trailing,
                    )
                  : null,
              prefixIconConstraints: const BoxConstraints(),
              suffixIconConstraints: const BoxConstraints(),
              isCollapsed: true,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: LuluSpacing.md,
                vertical: 14,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        if (hasError) ...[
          const SizedBox(height: LuluSpacing.xs),
          Text(
            errorText!,
            style: TextStyle(color: theme.error, fontSize: 12),
          ),
        ],
      ],
    );
  }
}
