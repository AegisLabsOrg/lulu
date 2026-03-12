import 'package:flutter/painting.dart';

/// Lulu Design System — Spacing Tokens
///
/// 基准单位：16
/// 所有间距均为 const double，语义化命名，不要在业务代码里硬编码数字。
abstract final class LuluSpacing {
  // ── 基础梯度（4 的倍数）─────────────────────────────────────────────────

  static const double xs = 4;
  static const double sm = 8;
  static const double md = 16;  // 基准
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 48;

  // ── 屏幕级 ───────────────────────────────────────────────────────────────

  /// 内容区距屏幕左右边距
  static const double screenHorizontal = 16;

  /// 内容区距屏幕顶部（SafeArea 之后）
  static const double screenTop = 24;

  /// 内容区距屏幕底部（SafeArea 之后）
  static const double screenBottom = 24;

  /// 屏幕内容区左右 EdgeInsets 快捷方式
  static const EdgeInsets screenPaddingH = EdgeInsets.symmetric(horizontal: screenHorizontal);

  /// 屏幕内容区四边 EdgeInsets 快捷方式
  static const EdgeInsets screenPadding = EdgeInsets.symmetric(
    horizontal: screenHorizontal,
    vertical: screenTop,
  );

  // ── Section 级 ───────────────────────────────────────────────────────────

  /// 页面内各 Section 之间的间距
  static const double sectionGap = 32;

  /// Section 标题与内容之间的间距
  static const double sectionTitleGap = 12;

  // ── 组件级 ───────────────────────────────────────────────────────────────

  /// 同一 Section 内，组件与组件之间
  static const double componentGap = 16;

  /// 组件内部 padding（卡片、按钮、输入框等）
  static const double innerPadding = 16;

  /// 组件内部紧凑 padding（小型组件、Tag、Badge 等）
  static const double innerPaddingSmall = 8;

  // ── 列表级 ───────────────────────────────────────────────────────────────

  /// 列表 item 之间的间距
  static const double itemGap = 12;

  /// 列表 item 内部，图标/头像与文字之间
  static const double itemInnerGap = 8;

  // ── 圆角（顺带放这里）────────────────────────────────────────────────────

  static const double radiusSm = 8;
  static const double radiusMd = 12;
  static const double radiusLg = 16;
  static const double radiusXl = 24;
  static const double radiusFull = 999; // 胶囊形

  static const BorderRadius borderRadiusSm = BorderRadius.all(Radius.circular(radiusSm));
  static const BorderRadius borderRadiusMd = BorderRadius.all(Radius.circular(radiusMd));
  static const BorderRadius borderRadiusLg = BorderRadius.all(Radius.circular(radiusLg));
  static const BorderRadius borderRadiusXl = BorderRadius.all(Radius.circular(radiusXl));
  static const BorderRadius borderRadiusFull = BorderRadius.all(Radius.circular(radiusFull));
}
