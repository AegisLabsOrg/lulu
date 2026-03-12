import 'package:flutter/painting.dart';

/// Lulu Design System — Color Tokens
///
/// 调色板来源：Jovida Figma Design Token（colors.json）
/// 所有颜色均为 const，直接引用，不要硬编码 hex。
abstract final class LuluColors {
  // ── Primary ──────────────────────────────────────────────────────────────

  /// 品牌主色，荧光绿 #acff4e
  static const Color primary = Color(0xFFACFF4E);

  // ── White Scale ──────────────────────────────────────────────────────────

  static const Color white = Color(0xFFFFFFFF);
  static const Color white80 = Color(0xCCFFFFFF); // 80%
  static const Color white50 = Color(0x80FFFFFF); // 50%
  static const Color white20 = Color(0x33FFFFFF); // 20%
  static const Color white10 = Color(0x1AFFFFFF); // 10%

  // ── Black Scale ──────────────────────────────────────────────────────────

  static const Color black = Color(0xFF000000);
  static const Color black80 = Color(0xCC000000); // 80%
  static const Color black60 = Color(0x99000000); // 60%
  static const Color black40 = Color(0x66000000); // 40%
  static const Color black20 = Color(0x33000000); // 20%
  static const Color black10 = Color(0x1A000000); // 10%
  static const Color black5 = Color(0x0D000000);  // 5%

  // ── Neutral ──────────────────────────────────────────────────────────────

  static const Color lightGray = Color(0xFFF2F2F2);
  static const Color blueGray1 = Color(0xFFDADDE2);
  static const Color blueGray2 = Color(0xFFE7E9EC);

  // ── Functional ───────────────────────────────────────────────────────────

  static const Color green = Color(0xFF6DCD00);
  static const Color green2 = Color(0xFF67C100);
  static const Color red = Color(0xFFFF716C);
  static const Color blue = Color(0xFF379AFF);
  static const Color yellow = Color(0xFFFFD928);
  static const Color orange = Color(0xFFFFA71A);
  static const Color orange2 = Color(0xFFFF8400);
  static const Color purple = Color(0xFFD992FF);
  static const Color purple2 = Color(0xFFAD92FF);

  // ── Light Palette ─────────────────────────────────────────────────────────

  static const Color lightGreen = Color(0xFFACFF4E);  // == primary
  static const Color lightBlue = Color(0xFF3BE8FF);
  static const Color lightYellow = Color(0xFFFFE24F);
  static const Color lightCyan = Color(0xFF4FFFDC);
  static const Color lightPink = Color(0xFFFFB8F7);
  static const Color lightPurple = Color(0xFFD5C9FF);
}
