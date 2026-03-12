import 'package:flutter/widgets.dart';
import '../../theme/lulu_theme.dart';

/// Lulu Design System — Divider
///
/// 示例见 [lulu_divider_sample.dart]
class LuluDivider extends StatelessWidget {
  final bool vertical;
  final double? length;
  final double thickness;
  final EdgeInsetsGeometry? margin;

  const LuluDivider({
    super.key,
    this.vertical = false,
    this.length,
    this.thickness = 1,
    this.margin,
  });

  const LuluDivider.vertical({super.key, this.length, this.thickness = 1, this.margin})
      : vertical = true;

  @override
  Widget build(BuildContext context) {
    final theme = LuluTheme.of(context);

    Widget line = Container(
      width: vertical ? thickness : length,
      height: vertical ? length : thickness,
      color: theme.divider,
    );

    if (margin != null) {
      return Padding(padding: margin!, child: line);
    }
    return line;
  }
}
