import 'package:talker_bloc_logger/talker_bloc_logger.dart';

final appCubitObserver = TalkerBlocObserver(
    settings: const TalkerBlocLoggerSettings(
      printEventFullData: false,
      printChanges: true,
      printClosings: true,
      printCreations: true,
    ),
  );
