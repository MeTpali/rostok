import 'dart:async';

import 'package:riverpod/riverpod.dart';

import '../../../data/repositories/practices/practices_repository.dart';
import '../../../data/repositories/topics/topics_repository.dart';
import '../../../di/di.dart';
import 'practices/practices_notifier.dart';
import 'practices/practices_state.dart';
import 'topics/topics_notifier.dart';
import 'topics/topics_state.dart';

abstract class MainDi {
  static final topicsProvider =
      StateNotifierProvider.autoDispose<TopicsNotifier, TopicsState>((ref) {
        final topicsNotifier = TopicsNotifier(
          topicsRepository: getIt<TopicsRepository>(),
        );
        unawaited(topicsNotifier.init());
        return topicsNotifier;
      });

  static final practicesProvider =
      StateNotifierProvider.autoDispose<PracticesNotifier, PracticesState>((
        ref,
      ) {
        final practicesNotifier = PracticesNotifier(
          practicesRepository: getIt<PracticesRepository>(),
        );
        unawaited(practicesNotifier.init());
        return practicesNotifier;
      });
}
