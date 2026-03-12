import 'package:flutter/widgets.dart';
import '../tokens/lulu_colors.dart';
import '../tokens/lulu_spacing.dart';

/// Lulu Design System — Theme Data
///
/// 所有组件从 [LuluThemeData] 读取颜色和间距，不直接引用 token 常量。
/// 这样换肤/深浅色只需切换 [LuluThemeData] 实例。
class LuluThemeData {
  // ── 背景 ─────────────────────────────────────────────────────────────────
  final Color background;
  final Color backgroundSecondary;
  final Color surface;

  // ── 主色 ─────────────────────────────────────────────────────────────────
  final Color primary;
  final Color primaryForeground; // primary 上的文字色

  // ── 文字 ─────────────────────────────────────────────────────────────────
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textDisabled;

  // ── 功能色 ────────────────────────────────────────────────────────────────
  final Color success;
  final Color warning;
  final Color error;
  final Color info;

  // ── 边框/分割线 ───────────────────────────────────────────────────────────
  final Color border;
  final Color divider;

  // ── 间距（直接复用 LuluSpacing，可被覆盖）────────────────────────────────
  final double screenHorizontal;
  final double screenTop;
  final double screenBottom;
  final double sectionGap;
  final double componentGap;
  final double itemGap;
  final double innerPadding;
  final double innerPaddingSmall;

  // ── 圆角 ─────────────────────────────────────────────────────────────────
  final double radiusSm;
  final double radiusMd;
  final double radiusLg;
  final double radiusXl;
  final double radiusFull;

  const LuluThemeData({
    required this.background,
    required this.backgroundSecondary,
    required this.surface,
    required this.primary,
    required this.primaryForeground,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textDisabled,
    required this.success,
    required this.warning,
    required this.error,
    required this.info,
    required this.border,
    required this.divider,
    this.screenHorizontal = LuluSpacing.screenHorizontal,
    this.screenTop = LuluSpacing.screenTop,
    this.screenBottom = LuluSpacing.screenBottom,
    this.sectionGap = LuluSpacing.sectionGap,
    this.componentGap = LuluSpacing.componentGap,
    this.itemGap = LuluSpacing.itemGap,
    this.innerPadding = LuluSpacing.innerPadding,
    this.innerPaddingSmall = LuluSpacing.innerPaddingSmall,
    this.radiusSm = LuluSpacing.radiusSm,
    this.radiusMd = LuluSpacing.radiusMd,
    this.radiusLg = LuluSpacing.radiusLg,
    this.radiusXl = LuluSpacing.radiusXl,
    this.radiusFull = LuluSpacing.radiusFull,
  });

  /// 深色主题（Jovida 默认风格）
  factory LuluThemeData.dark() => const LuluThemeData(
        background: LuluColors.black,
        backgroundSecondary: Color(0xFF111111),
        surface: Color(0xFF1A1A1A),
        primary: LuluColors.primary,
        primaryForeground: LuluColors.black,
        textPrimary: LuluColors.white,
        textSecondary: LuluColors.white80,
        textTertiary: LuluColors.white50,
        textDisabled: LuluColors.white20,
        success: LuluColors.green,
        warning: LuluColors.orange,
        error: LuluColors.red,
        info: LuluColors.blue,
        border: LuluColors.white20,
        divider: LuluColors.white10,
      );

  /// 浅色主题
  factory LuluThemeData.light() => const LuluThemeData(
        background: LuluColors.white,
        backgroundSecondary: LuluColors.lightGray,
        surface: LuluColors.white,
        primary: LuluColors.primary,
        primaryForeground: LuluColors.black,
        textPrimary: LuluColors.black,
        textSecondary: LuluColors.black80,
        textTertiary: LuluColors.black60,
        textDisabled: LuluColors.black40,
        success: LuluColors.green,
        warning: LuluColors.orange,
        error: LuluColors.red,
        info: LuluColors.blue,
        border: LuluColors.blueGray1,
        divider: LuluColors.blueGray2,
      );

  /// 复制并覆盖部分字段
  LuluThemeData copyWith({
    Color? background,
    Color? backgroundSecondary,
    Color? surface,
    Color? primary,
    Color? primaryForeground,
    Color? textPrimary,
    Color? textSecondary,
    Color? textTertiary,
    Color? textDisabled,
    Color? success,
    Color? warning,
    Color? error,
    Color? info,
    Color? border,
    Color? divider,
  }) {
    return LuluThemeData(
      background: background ?? this.background,
      backgroundSecondary: backgroundSecondary ?? this.backgroundSecondary,
      surface: surface ?? this.surface,
      primary: primary ?? this.primary,
      primaryForeground: primaryForeground ?? this.primaryForeground,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textTertiary: textTertiary ?? this.textTertiary,
      textDisabled: textDisabled ?? this.textDisabled,
      success: success ?? this.success,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      info: info ?? this.info,
      border: border ?? this.border,
      divider: divider ?? this.divider,
    );
  }
}
