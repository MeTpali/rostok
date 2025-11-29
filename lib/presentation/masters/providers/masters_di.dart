import 'dart:async';

import 'package:riverpod/riverpod.dart';

import '../../../data/repositories/masters/masters_repository.dart';
import '../../../di/di.dart';
import 'master/master_notifier.dart';
import 'master/master_state.dart';
import 'master_articles/master_articles_notifier.dart';
import 'master_articles/master_articles_state.dart';
import 'master_comments/master_comments_notifier.dart';
import 'master_comments/master_comments_state.dart';
import 'masters/masters_notifier.dart';
import 'masters/masters_state.dart';

abstract class MastersDi {
  static final mastersProvider =
      StateNotifierProvider.autoDispose<MastersNotifier, MastersState>((ref) {
        final mastersNotifier = MastersNotifier(
          mastersRepository: getIt<MastersRepository>(),
        );
        unawaited(mastersNotifier.init());
        return mastersNotifier;
      });

  static final masterProvider =
      StateNotifierProvider.autoDispose<MasterNotifier, MasterState>(
        (ref) => MasterNotifier(mastersRepository: getIt<MastersRepository>()),
      );

  static final masterCommentsProvider =
      StateNotifierProvider.autoDispose<
        MasterCommentsNotifier,
        MasterCommentsState
      >(
        (ref) => MasterCommentsNotifier(
          mastersRepository: getIt<MastersRepository>(),
        ),
      );

  static final masterArticlesProvider =
      StateNotifierProvider.autoDispose<
        MasterArticlesNotifier,
        MasterArticlesState
      >(
        (ref) => MasterArticlesNotifier(
          mastersRepository: getIt<MastersRepository>(),
        ),
      );
}
