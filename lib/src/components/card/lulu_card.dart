import 'package:flutter/widgets.dart';
import '../../theme/lulu_theme.dart';
import '../../tokens/lulu_spacing.dart';

/// Lulu Design System — Card
///
/// 通用卡片容器，提供统一的背景色、圆角和内边距。
/// 示例见 [lulu_card_sample.dart]
class LuluCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  /// 覆盖背景色
  final Color? color;

  /// 是否显示边框
  final bool bordered;

  const LuluCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
    this.color,
    this.bordered = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);

    Widget card = Container(
      padding: padding ?? const EdgeInsets.all(LuluSpacing.innerPadding),
      decoration: BoxDecoration(
        color: color ?? theme.surface,
        borderRadius: BorderRadius.circular(LuluSpacing.radiusLg),
        border: bordered ? Border.all(color: theme.border, width: 1) : null,
      ),
      child: child,
    );

    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: card);
    }
    return card;
  }
}
