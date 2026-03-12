import 'package:flutter/widgets.dart';
import 'lulu_divider.dart';

/// LuluDivider 完整用法示例
class LuluDividerSample extends StatelessWidget {
  const LuluDividerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 水平分割线（撑满）
        const LuluDivider(),

        const SizedBox(height: 16),

        // 带上下边距
        const LuluDivider(
          margin: EdgeInsets.symmetric(vertical: 8),
        ),

        const SizedBox(height: 16),

        // 固定宽度
        const LuluDivider(length: 80),

        const SizedBox(height: 16),

        // 垂直分割线（在 Row 中使用）
        SizedBox(
          height: 24,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Left', style: TextStyle(color: Color(0xFFFFFFFF))),
              SizedBox(width: 12),
              LuluDivider.vertical(),
              SizedBox(width: 12),
              Text('Right', style: TextStyle(color: Color(0xFFFFFFFF))),
            ],
          ),
        ),
      ],
    );
  }
}
