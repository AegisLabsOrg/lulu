import 'package:flutter/widgets.dart';
import 'lulu_avatar.dart';

/// LuluAvatar 完整用法示例
class LuluAvatarSample extends StatelessWidget {
  const LuluAvatarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 尺寸梯度
        Row(
          children: [
            LuluAvatarSize.xs,
            LuluAvatarSize.sm,
            LuluAvatarSize.md,
            LuluAvatarSize.lg,
            LuluAvatarSize.xl,
          ].map((s) => Padding(
            padding: const EdgeInsets.only(right: 12),
            child: LuluAvatar(name: 'John Doe', size: s),
          )).toList(),
        ),

        const SizedBox(height: 16),

        // 单字名字
        const LuluAvatar(name: 'Alice'),

        const SizedBox(height: 16),

        // 网络图片
        const LuluAvatar(
          imageUrl: 'https://i.pravatar.cc/150?img=1',
          size: LuluAvatarSize.lg,
        ),

        const SizedBox(height: 16),

        // 自定义背景色
        const LuluAvatar(
          name: 'Sam',
          backgroundColor: Color(0xFF1A1A2E),
          size: LuluAvatarSize.md,
        ),
      ],
    );
  }
}
