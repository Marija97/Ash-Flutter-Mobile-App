import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AshAsset extends StatelessWidget {
  const AshAsset(this.path, {this.size = 24, this.color = Colors.black});

  final String path;
  final double size;
  final Color color;

  /// Checks if the icon with a given [path] is in the SVG format.
  static bool isSvg(String path) => path.toLowerCase().contains('svg');

  /// Returns the correct icon `Widget`, depending on the format of the
  /// icon with a given [path].
  /// [size] determines the size of the icon,
  /// while [color] determines its color (only for SVG icons).
  @override
  Widget build(BuildContext context) {
    if (isSvg(path)) {
      return SvgPicture.asset(
        path,
        width: size,
        height: size,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      );
    }

    return Image.asset(path, width: size, height: size);
  }
}
