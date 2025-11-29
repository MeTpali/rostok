import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'day_card/day_card_notifier.dart';
import 'day_card/day_card_state.dart';

abstract class DayCardDi {
  static final dayCardProvider =
      StateNotifierProvider<DayCardNotifier, DayCardState>(
        (ref) => DayCardNotifier(),
      );
}
