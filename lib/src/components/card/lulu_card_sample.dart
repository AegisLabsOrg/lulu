import 'package:flutter/widgets.dart';
import '../../tokens/lulu_colors.dart';
import 'lulu_card.dart';

/// LuluCard 完整用法示例
class LuluCardSample extends StatelessWidget {
  const LuluCardSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 基础卡片
        const LuluCard(
          child: Text('基础卡片', style: TextStyle(color: LuluColors.white)),
        ),

        const SizedBox(height: 16),

        // 带边框
        const LuluCard(
          bordered: true,
          child: Text('带边框卡片', style: TextStyle(color: LuluColors.white)),
        ),

        const SizedBox(height: 16),

        // 可点击
        LuluCard(
          onTap: () {},
          child: const Text('可点击卡片', style: TextStyle(color: LuluColors.white)),
        ),

        const SizedBox(height: 16),

        // 自定义背景色
        const LuluCard(
          color: Color(0xFF1A2A1A),
          child: Text('自定义背景色', style: TextStyle(color: LuluColors.primary)),
        ),

        const SizedBox(height: 16),

        // 无内边距（完全自定义内容布局）
        LuluCard(
          padding: EdgeInsets.zero,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Column(
              children: [
                Container(height: 80, color: LuluColors.primary),
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('无内边距卡片', style: TextStyle(color: LuluColors.white)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
