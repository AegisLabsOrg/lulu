import 'package:flutter/widgets.dart';
import 'lulu_text.dart';

/// LuluText 完整用法示例
class LuluTextSample extends StatelessWidget {
  const LuluTextSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 语义化构造器（推荐用法）
        const LuluText.displayLg('Display Large'),
        const LuluText.displayMd('Display Medium'),
        const LuluText.displaySm('Display Small'),
        const LuluText.bodyLg('Body Large — 正文大'),
        const LuluText.bodyMd('Body Medium — 正文'),
        const LuluText.bodySm('Body Small — 正文小'),
        const LuluText.label('Label — 标签文字'),
        const LuluText.caption('Caption — 说明文字'),

        // 覆盖颜色
        const LuluText.bodyMd('自定义颜色', color: Color(0xFFACFF4E)),

        // 多行截断
        const LuluText.bodyMd(
          '这是一段很长的文字，超过两行会被截断显示省略号...',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
