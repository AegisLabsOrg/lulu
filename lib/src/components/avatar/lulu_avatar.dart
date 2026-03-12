import 'package:flutter/widgets.dart';
import '../../theme/lulu_theme.dart';

/// 头像尺寸
enum LuluAvatarSize { xs, sm, md, lg, xl }

/// Lulu Design System — Avatar
///
/// 示例见 [lulu_avatar_sample.dart]
class LuluAvatar extends StatelessWidget {
  /// 网络图片 URL
  final String? imageUrl;

  /// 无图片时显示的文字（取首字母）
  final String? name;

  final LuluAvatarSize size;
  final Color? backgroundColor;

  const LuluAvatar({
    super.key,
    this.imageUrl,
    this.name,
    this.size = LuluAvatarSize.md,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);
    final diameter = _diameter(size);
    final fontSize = _fontSize(size);
    final initials = _initials(name);

    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? theme.primary.withValues(alpha: 0.2),
        image: imageUrl != null
            ? DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      alignment: Alignment.center,
      child: imageUrl == null
          ? Text(
              initials,
              style: TextStyle(
                color: theme.primary,
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            )
          : null,
    );
  }

  double _diameter(LuluAvatarSize size) => switch (size) {
        LuluAvatarSize.xs => 24,
        LuluAvatarSize.sm => 32,
        LuluAvatarSize.md => 40,
        LuluAvatarSize.lg => 56,
        LuluAvatarSize.xl => 80,
      };

  double _fontSize(LuluAvatarSize size) => switch (size) {
        LuluAvatarSize.xs => 10,
        LuluAvatarSize.sm => 12,
        LuluAvatarSize.md => 15,
        LuluAvatarSize.lg => 20,
        LuluAvatarSize.xl => 28,
      };

  String _initials(String? name) {
    if (name == null || name.isEmpty) return '?';
    final parts = name.trim().split(RegExp(r'\s+'));
    if (parts.length >= 2) {
      return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
    }
    return name[0].toUpperCase();
  }
}
