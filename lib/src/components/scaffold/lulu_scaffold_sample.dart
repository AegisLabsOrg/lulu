import 'package:flutter/material.dart';
import '../button/lulu_button.dart';
import '../text/lulu_text.dart';
import 'lulu_scaffold.dart';

/// LuluScaffold 完整用法示例
class LuluScaffoldSample extends StatelessWidget {
  const LuluScaffoldSample({super.key});

  @override
  Widget build(BuildContext context) {
    // 基础用法：标题 + 标准内边距
    return LuluScaffold(
      title: 'My Page',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          LuluText.displayMd('Hello, World'),
          SizedBox(height: 8),
          LuluText.bodyMd('这是页面正文内容，自动应用左右边距。'),
        ],
      ),
    );
  }
}

/// 带底部按钮
class LuluScaffoldWithBottomBarSample extends StatelessWidget {
  const LuluScaffoldWithBottomBarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return LuluScaffold(
      title: 'Setup',
      body: const LuluText.bodyMd('页面内容区域'),
      bottomBar: LuluButton(
        label: 'Continue',
        expanded: true,
        onPressed: () {},
      ),
    );
  }
}

/// 可滚动页面
class LuluScaffoldScrollableSample extends StatelessWidget {
  const LuluScaffoldScrollableSample({super.key});

  @override
  Widget build(BuildContext context) {
    return LuluScaffold(
      title: 'Scrollable',
      scrollable: true,
      body: Column(
        children: List.generate(
          20,
          (i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: LuluText.bodyMd('Item $i'),
          ),
        ),
      ),
    );
  }
}

/// 无标准边距（如全屏地图、视频）
class LuluScaffoldNoPaddingSample extends StatelessWidget {
  const LuluScaffoldNoPaddingSample({super.key});

  @override
  Widget build(BuildContext context) {
    return LuluScaffold(
      applyScreenPadding: false,
      body: Container(color: const Color(0xFF1A1A1A)),
    );
  }
}
