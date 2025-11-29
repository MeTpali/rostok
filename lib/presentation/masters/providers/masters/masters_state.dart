import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/masters/master/master.dart';

part 'masters_state.freezed.dart';

@freezed
class MastersState with _$MastersState {
  const factory MastersState.loading() = LoadingMastersState;

  const factory MastersState.resolved({
    required int page,
    required List<Master> masters,
    String? topic,
    String? practice,
    @Default(SortType.online) SortType sortType,
  }) = ResolvedMastersState;

  const factory MastersState.idle() = IdleMastersState;

  const factory MastersState.error(String message) = ErrorMastersState;
}

enum SortType {
  online,
  rating,
  decreasePrice,
  inscreasePrice;

  @override
  String toString() => switch (this) {
    SortType.online => 'Онлайн',
    SortType.rating => 'Высокий рейтинг',
    SortType.decreasePrice => 'По убыванию цены',
    SortType.inscreasePrice => 'По возрастанию цены',
  };

  List<Master> sortProducts(List<Master> masters) {
    final sortedMasters = List<Master>.from(masters);

    switch (this) {
      case SortType.online:
        sortedMasters.sort((a, b) {
          if (!a.isOnline && b.isOnline) {
            return 1;
          }

          if (a.isOnline && !b.isOnline) {
            return -1;
          }

          return 0;
        });
      case SortType.rating:
        sortedMasters.sort((a, b) => a.rating.compareTo(b.rating));
      case SortType.inscreasePrice:
        break;
      case SortType.decreasePrice:
        break;
    }

    return sortedMasters;
  }
}
