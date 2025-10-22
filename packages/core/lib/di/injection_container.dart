import 'dart:async';

import '../core.dart';
import '../helpers/share_preferences_local.dart';

final GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  // SharedPreferences instance
  final ILocalStorageService localStorage = await LocalStorageService.create();

  locator.registerSingleton<ILocalStorageService>(localStorage);


}
