import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

Future<void> trustZscaler() async {
  if (kDebugMode) {
    WidgetsFlutterBinding.ensureInitialized();
    ByteData data = await rootBundle.load('zscaler.pem');
    SecurityContext context = SecurityContext.defaultContext;
    context.setTrustedCertificatesBytes(data.buffer.asUint8List());
  }
}
