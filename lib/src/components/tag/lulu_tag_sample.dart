import 'package:flutter/material.dart';
import '../../tokens/lulu_colors.dart';
import 'lulu_tag.dart';

/// LuluTag / LuluBadge 完整用法示例
class LuluTagSample extends StatelessWidget {
  const LuluTagSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tag 变体
        const Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            LuluTag(label: 'Filled'),
            LuluTag(label: 'Outline', variant: LuluTagVariant.outline),
            LuluTag(label: 'Ghost', variant: LuluTagVariant.ghost),
          ],
        ),

        const SizedBox(height: 16),

        // 功能色 Tag
        const Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            LuluTag(label: 'Active', color: LuluColors.green),
            LuluTag(label: 'Warning', color: LuluColors.orange),
            LuluTag(label: 'Error', color: LuluColors.red),
            LuluTag(label: 'Info', color: LuluColors.blue),
          ],
        ),

        const SizedBox(height: 16),

        // 带图标
        const LuluTag(
          label: 'Streak',
          leading: Icon(Icons.local_fire_department, size: 12, color: LuluColors.orange),
          color: LuluColors.orange,
        ),

        const SizedBox(height: 32),

        // Badge — 数字
        LuluBadge(
          count: 5,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: LuluColors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.notifications_outlined, color: LuluColors.white),
          ),
        ),

        const SizedBox(height: 16),

        // Badge — 小红点
        LuluBadge(
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: LuluColors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.message_outlined, color: LuluColors.white),
          ),
        ),

        const SizedBox(height: 16),

        // Badge — 超过 99
        LuluBadge(
          count: 128,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: LuluColors.white10,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.inbox_outlined, color: LuluColors.white),
          ),
        ),
      ],
    );
  }
}
