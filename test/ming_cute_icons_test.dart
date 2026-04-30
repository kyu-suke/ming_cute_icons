import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';

void main() {
  group('MingCuteIcons', () {
    test('exposes icons with MingCute package font metadata', () {
      expectMingCuteIcon(MingCuteIcons.mgc_add_fill, codePoint: 0xe90e);
      expectMingCuteIcon(MingCuteIcons.mgc_mingcute_fill, codePoint: 0xf0be);
      expectMingCuteIcon(MingCuteIcons.mgc_mingcute_line, codePoint: 0xf0bf);
    });

    test('exposes multi-path icons as separate glyphs', () {
      expectMingCuteIcon(
        MingCuteIcons.mgc_loading_3_fill_path1,
        codePoint: 0xf038,
      );
      expectMingCuteIcon(
        MingCuteIcons.mgc_loading_3_fill_path2,
        codePoint: 0xf039,
      );
    });
  });
}

void expectMingCuteIcon(IconData icon, {required int codePoint}) {
  expect(icon.codePoint, codePoint);
  expect(icon.fontFamily, 'MingCute');
  expect(icon.fontPackage, 'ming_cute_icons');
  expect(icon.matchTextDirection, isFalse);
}
