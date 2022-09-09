import 'dart:io';

import 'package:flutter/material.dart';

bool isMobile = Platform.isAndroid || Platform.isIOS;
bool isDesktop = Platform.isWindows || Platform.isMacOS || Platform.isLinux;

Color kPrimaryColor = const Color(0xFF34495e);
Color kErrorColor = const Color(0xFFEB1D36);
// Color kPrimaryColor = Colors.orange;