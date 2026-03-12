import 'package:flutter/widgets.dart';
import '../../theme/lulu_theme.dart';

/// 文字语义层级
enum LuluTextStyle {
  /// 页面大标题，32sp bold
  displayLg,

  /// 页面标题，24sp bold
  displayMd,

  /// Section 标题，20sp semibold
  displaySm,

  /// 正文大，17sp regular
  bodyLg,

  /// 正文，15sp regular
  bodyMd,

  /// 正文小，13sp regular
  bodySm,

  /// 标签/按钮文字，13sp semibold
  label,

  /// 说明文字，12sp regular
  caption,
}

/// Lulu Design System — Text
///
/// 语义化文字组件，颜色从 Theme 读取。
/// 示例见 [lulu_text_sample.dart]
class LuluText extends StatelessWidget {
  final String text;
  final LuluTextStyle style;

  /// 覆盖颜色（不传则按语义自动选色）
  final Color? color;

  /// 文字对齐
  final TextAlign? textAlign;

  /// 最大行数
  final int? maxLines;

  /// 溢出处理
  final TextOverflow? overflow;

  const LuluText(
    this.text, {
    super.key,
    this.style = LuluTextStyle.bodyMd,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  // ── 语义化构造器 ──────────────────────────────────────────────────────────

  const LuluText.displayLg(this.text, {super.key, this.color, this.textAlign, this.maxLines, this.overflow})
      : style = LuluTextStyle.displayLg;

  const LuluText.displayMd(this.text, {super.key, this.color, this.textAlign, this.maxLines, this.overflow})
      : style = LuluTextStyle.displayMd;

  const LuluText.displaySm(this.text, {super.key, this.color, this.textAlign, this.maxLines, this.overflow})
      : style = LuluTextStyle.displaySm;

  const LuluText.bodyLg(this.text, {super.key, this.color, this.textAlign, this.maxLines, this.overflow})
      : style = LuluTextStyle.bodyLg;

  const LuluText.bodyMd(this.text, {super.key, this.color, this.textAlign, this.maxLines, this.overflow})
      : style = LuluTextStyle.bodyMd;

  const LuluText.bodySm(this.text, {super.key, this.color, this.textAlign, this.maxLines, this.overflow})
      : style = LuluTextStyle.bodySm;

  const LuluText.label(this.text, {super.key, this.color, this.textAlign, this.maxLines, this.overflow})
      : style = LuluTextStyle.label;

  const LuluText.caption(this.text, {super.key, this.color, this.textAlign, this.maxLines, this.overflow})
      : style = LuluTextStyle.caption;

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);
    final (fontSize, fontWeight, defaultColor) = _spec(style, theme);

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? defaultColor,
        height: 1.4,
        decoration: TextDecoration.none,
      ),
    );
  }

  (double fontSize, FontWeight fontWeight, Color color) _spec(LuluTextStyle style, theme) {
    return switch (style) {
      LuluTextStyle.displayLg => (32, FontWeight.w700, theme.textPrimary),
      LuluTextStyle.displayMd => (24, FontWeight.w700, theme.textPrimary),
      LuluTextStyle.displaySm => (20, FontWeight.w600, theme.textPrimary),
      LuluTextStyle.bodyLg    => (17, FontWeight.w400, theme.textPrimary),
      LuluTextStyle.bodyMd    => (15, FontWeight.w400, theme.textPrimary),
      LuluTextStyle.bodySm    => (13, FontWeight.w400, theme.textSecondary),
      LuluTextStyle.label     => (13, FontWeight.w600, theme.textPrimary),
      LuluTextStyle.caption   => (12, FontWeight.w400, theme.textTertiary),
    };
  }
}
