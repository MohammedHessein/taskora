import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:taskora/core/dependency_injection/injector.config.dart';

final di = GetIt.instance;

@InjectableInit()
void configureDependencies() => di.init();
