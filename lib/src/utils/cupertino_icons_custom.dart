import 'package:flutter/cupertino.dart';

final _icons = <String, IconData>{
    'plus': IconData(
        0xf2c7,
        fontFamily: CupertinoIcons.iconFont,
        fontPackage: CupertinoIcons.iconFontPackage
    ),
    'minus': IconData(
        0xf2f4,
        fontFamily: CupertinoIcons.iconFont,
        fontPackage: CupertinoIcons.iconFontPackage
    ),
    'refresh': IconData(
        0xf3a8,
        fontFamily: CupertinoIcons.iconFont,
        fontPackage: CupertinoIcons.iconFontPackage
    ),
};

IconData getCupertinoIconData(String iconName) {
    return _icons[iconName];
}
