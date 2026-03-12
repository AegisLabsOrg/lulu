import 'package:flutter_test/flutter_test.dart';
import 'package:lulu/lulu.dart';

void main() {
  test('LuluColors primary is defined', () {
    expect(LuluColors.primary.toARGB32(), 0xFFACFF4E);
  });

  test('LuluSpacing base is 16', () {
    expect(LuluSpacing.md, 16);
    expect(LuluSpacing.screenHorizontal, 16);
  });

  test('LuluThemeData.dark has correct primary', () {
    final theme = LuluThemeData.dark();
    expect(theme.primary.toARGB32(), LuluColors.primary.toARGB32());
  });
}
