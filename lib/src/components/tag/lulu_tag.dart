import 'package:flutter/widgets.dart';
import '../../theme/lulu_theme.dart';
import '../../tokens/lulu_spacing.dart';

/// Tag 变体
enum LuluTagVariant {
  /// 填充背景（默认）
  filled,

  /// 仅边框
  outline,

  /// 纯文字，无背景无边框
  ghost,
}

/// Lulu Design System — Tag
///
/// 用于状态标注、分类标签等场景。
/// 示例见 [lulu_tag_sample.dart]
class LuluTag extends StatelessWidget {
  final String label;
  final LuluTagVariant variant;
  final Color? color; // 覆盖主题色
  final Widget? leading;

  const LuluTag({
    super.key,
    required this.label,
    this.variant = LuluTagVariant.filled,
    this.color,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);
    final baseColor = color ?? theme.primary;

    final (bg, fg, border) = switch (variant) {
      LuluTagVariant.filled  => (baseColor.withValues(alpha: 0.15), baseColor, null),
      LuluTagVariant.outline => (const Color(0x00000000), baseColor, baseColor),
      LuluTagVariant.ghost   => (const Color(0x00000000), baseColor, null),
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(LuluSpacing.radiusFull),
        border: border != null ? Border.all(color: border, width: 1) : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[
            leading!,
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: TextStyle(
              color: fg,
              fontSize: 12,
              fontWeight: FontWeight.w500,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}

/// 角标，显示数字或小红点
class LuluBadge extends StatelessWidget {
  final Widget child;
  final int? count;       // null = 小红点，0 = 隐藏
  final Color? color;

  const LuluBadge({
    super.key,
    required this.child,
    this.count,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);
    final badgeColor = color ?? theme.error;

    // count == 0 时不显示 badge
    if (count == 0) return child;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        Positioned(
          top: -4,
          right: -4,
          child: count == null
              ? _dot(badgeColor)
              : _countBadge(count!, badgeColor),
        ),
      ],
    );
  }

  Widget _dot(Color color) => Container(
        width: 8,
        height: 8,
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      );

  Widget _countBadge(int count, Color color) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(LuluSpacing.radiusFull),
        ),
        child: Text(
          count > 99 ? '99+' : '$count',
          style: const TextStyle(color: Color(0xFFFFFFFF), fontSize: 10, fontWeight: FontWeight.w600, height: 1.2),
        ),
      );
}
