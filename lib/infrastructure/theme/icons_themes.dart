

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsThemes {

  static Widget prefixSVGIconThemes(icon) => Padding(
    padding: const EdgeInsets.all(12.0),
    child: SvgPicture.asset(
      icon,
    ),
  );

  static Widget prefixSVGIconThemes1() => Padding(
    padding: const EdgeInsets.all(12.0),
    child:Text('+65')
  );


}