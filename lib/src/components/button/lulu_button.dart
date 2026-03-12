import 'package:flutter/material.dart';
import '../../theme/lulu_theme.dart';
import '../../theme/lulu_theme_data.dart';
import '../../tokens/lulu_spacing.dart';

/// 按钮变体
enum LuluButtonVariant {
  /// 主按钮：primary 背景色，用于页面主操作
  primary,

  /// 次按钮：透明背景 + primary 边框
  outline,

  /// 幽灵按钮：透明背景，无边框，primary 文字色
  ghost,

  /// 危险按钮：error 色，用于删除等破坏性操作
  danger,
}

/// 按钮尺寸
enum LuluButtonSize {
  small,
  medium,
  large,
}

/// Lulu Design System — Button
///
/// 示例见 [lulu_button_sample.dart]
class LuluButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final LuluButtonVariant variant;
  final LuluButtonSize size;
  final Widget? leading;   // 左侧图标
  final Widget? trailing;  // 右侧图标
  final bool loading;
  final bool expanded;     // 是否撑满父容器宽度

  const LuluButton({
    super.key,
    required this.label,
    this.onPressed,
    this.variant = LuluButtonVariant.primary,
    this.size = LuluButtonSize.medium,
    this.leading,
    this.trailing,
    this.loading = false,
    this.expanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);
    final disabled = onPressed == null || loading;

    final (bg, fg, border) = _colors(theme, disabled);
    final (height, hPadding, fontSize) = _dimensions(size);

    Widget content = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (loading)
          SizedBox(
            width: fontSize,
            height: fontSize,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation(fg),
            ),
          )
        else ...[
          if (leading != null) ...[
            leading!,
            const SizedBox(width: LuluSpacing.sm),
          ],
          Text(
            label,
            style: TextStyle(
              color: fg,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
              height: 1.2,
            ),
          ),
          if (trailing != null) ...[
            const SizedBox(width: LuluSpacing.sm),
            trailing!,
          ],
        ],
      ],
    );

    Widget button = GestureDetector(
      onTap: disabled ? null : onPressed,
      child: AnimatedOpacity(
        opacity: disabled ? 0.4 : 1.0,
        duration: const Duration(milliseconds: 150),
        child: Container(
          height: height,
          padding: EdgeInsets.symmetric(horizontal: hPadding),
          decoration: BoxDecoration(
            color: bg,
            border: border != null ? Border.all(color: border, width: 1.5) : null,
            borderRadius: BorderRadius.circular(LuluSpacing.radiusFull),
          ),
          alignment: Alignment.center,
          child: content,
        ),
      ),
    );

    if (expanded) {
      return SizedBox(width: double.infinity, child: button);
    }
    return button;
  }

  (Color bg, Color fg, Color? border) _colors(LuluThemeData theme, bool disabled) {
    return switch (variant) {
      LuluButtonVariant.primary => (theme.primary, theme.primaryForeground, null),
      LuluButtonVariant.outline => (const Color(0x00000000), theme.primary, theme.primary),
      LuluButtonVariant.ghost   => (const Color(0x00000000), theme.primary, null),
      LuluButtonVariant.danger  => (theme.error, theme.textPrimary, null),
    };
  }

  (double height, double hPadding, double fontSize) _dimensions(LuluButtonSize size) {
    return switch (size) {
      LuluButtonSize.small  => (36.0, 16.0, 13.0),
      LuluButtonSize.medium => (48.0, 24.0, 15.0),
      LuluButtonSize.large  => (56.0, 32.0, 17.0),
    };
  }
}
