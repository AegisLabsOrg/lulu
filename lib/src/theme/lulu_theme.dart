import 'package:flutter/widgets.dart';
import 'lulu_theme_data.dart';

/// Lulu Design System — Theme InheritedWidget
///
/// 用法：
/// ```dart
/// final theme = LuluTheme.of(context);
/// color: theme.primary
/// ```
class LuluTheme extends InheritedWidget {
  final LuluThemeData data;

  const LuluTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// 获取最近的 [LuluThemeData]，未找到时返回深色默认主题
  static LuluThemeData of(BuildContext context) {
    final widget = context.dependOnInheritedWidgetOfExactType<LuluTheme>();
    assert(widget != null,
        'LuluTheme.of() 未找到 LuluThemeScope，请确保在 Widget 树顶部包裹 LuluThemeScope');
    return widget!.data;
  }

  /// 不监听变化的版本（仅读取一次）
  static LuluThemeData read(BuildContext context) {
    final widget =
        context.getInheritedWidgetOfExactType<LuluTheme>();
    assert(widget != null,
        'LuluTheme.read() 未找到 LuluThemeScope，请确保在 Widget 树顶部包裹 LuluThemeScope');
    return widget!.data;
  }

  @override
  bool updateShouldNotify(LuluTheme oldWidget) => data != oldWidget.data;
}

/// Lulu Design System — Theme 注入入口
///
/// 在应用根部包裹，注入主题：
/// ```dart
/// LuluThemeScope(
///   theme: LuluThemeData.dark(),
///   child: MyApp(),
/// )
/// ```
///
/// 跟随系统深浅色：
/// ```dart
/// LuluThemeScope(
///   theme: MediaQuery.platformBrightnessOf(context) == Brightness.dark
///       ? LuluThemeData.dark()
///       : LuluThemeData.light(),
///   child: MyApp(),
/// )
/// ```
class LuluThemeScope extends StatelessWidget {
  final LuluThemeData theme;
  final Widget child;

  const LuluThemeScope({
    super.key,
    required this.theme,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LuluTheme(
      data: theme,
      child: child,
    );
  }
}
