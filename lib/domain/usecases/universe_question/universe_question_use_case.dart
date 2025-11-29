import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/entities/result/result.dart';
import '../../../data/repositories/universe/universe_repository.dart';
import '../../../di/di.dart';
import '../../models/universe/universe_answer/universe_answer.dart';
import '../use_case.dart';

part 'universe_question_use_case.freezed.dart';

class UniverseQuestionUseCase
    implements
        UseCaseAsync<UniverseQuestionUseCaseParams, Result<UniverseAnswer>> {
  const UniverseQuestionUseCase();

  @override
  Future<Result<UniverseAnswer>> call(
    UniverseQuestionUseCaseParams params,
  ) async {
    final result = await getIt<UniverseRepository>().makeUniverseRequest(
      day: params.day,
      month: params.month,
      year: params.year,
      time: params.time,
      country: params.country,
      city: params.city,
      query: params.query,
    );

    return result;
  }
}

@freezed
class UniverseQuestionUseCaseParams with _$UniverseQuestionUseCaseParams {
  const factory UniverseQuestionUseCaseParams({
    required String query,
    int? day,
    int? month,
    int? year,
    String? time,
    String? country,
    String? city,
  }) = _UniverseQuestionUseCaseParams;
}
