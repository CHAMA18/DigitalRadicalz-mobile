/// Compatibility shim for font_awesome_flutter with Flutter 3.27+
/// Replaces IconData subclasses with plain IconData instances
library font_awesome_flutter;

import 'package:flutter/material.dart';

export 'src/icon_data.dart' show FontAwesomeIcons, FaIcon;
