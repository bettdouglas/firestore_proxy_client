// Package imports:
import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

// Project imports:

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    print('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "newValue": "$newValue"
}''');
  }
}
