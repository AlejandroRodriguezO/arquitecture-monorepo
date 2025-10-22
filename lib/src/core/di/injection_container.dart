import 'dart:async';

import 'package:bank/bank.dart';
import 'package:ecommerce/ecommerce.dart';

Future<void> injectionContainer() async {
  await initializeDependencies();
  unawaited(ecommerceDiInit());
  unawaited(bankDiInit());
}
