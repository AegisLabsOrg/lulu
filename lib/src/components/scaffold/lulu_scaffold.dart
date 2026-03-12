import 'package:flutter/material.dart';
import '../../theme/lulu_theme.dart';

/// Lulu Design System — Scaffold
///
/// 统一页面骨架：背景色、SafeArea、标准内边距。
/// 示例见 [lulu_scaffold_sample.dart]
class LuluScaffold extends StatelessWidget {
  final Widget body;

  /// AppBar 标题文字（传入时自动显示标准 AppBar）
  final String? title;

  /// 自定义 AppBar（优先于 title）
  final PreferredSizeWidget? appBar;

  /// 底部固定区域（如主按钮）
  final Widget? bottomBar;

  /// 是否应用水平内边距（默认 true）
  final bool applyScreenPadding;

  /// 是否可滚动（默认 false，需要滚动时设为 true）
  final bool scrollable;

  /// FAB
  final Widget? floatingActionButton;

  const LuluScaffold({
    super.key,
    required this.body,
    this.title,
    this.appBar,
    this.bottomBar,
    this.applyScreenPadding = true,
    this.scrollable = false,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);

    Widget content = applyScreenPadding
        ? Padding(
            padding: EdgeInsets.symmetric(horizontal: theme.screenHorizontal),
            child: body,
          )
        : body;

    if (scrollable) {
      content = SingleChildScrollView(child: content);
    }

    return Scaffold(
      backgroundColor: theme.background,
      appBar: appBar ?? (title != null ? _buildAppBar(context, theme) : null),
      body: SafeArea(
        bottom: bottomBar == null,
        child: content,
      ),
      bottomNavigationBar: bottomBar != null
          ? SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  theme.screenHorizontal,
                  8,
                  theme.screenHorizontal,
                  theme.screenBottom,
                ),
                child: bottomBar,
              ),
            )
          : null,
      floatingActionButton: floatingActionButton,
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context, theme) {
    return AppBar(
      backgroundColor: theme.background,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: false,
      title: Text(
        title!,
        style: TextStyle(
          color: theme.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      iconTheme: IconThemeData(color: theme.textPrimary),
    );
  }
}
