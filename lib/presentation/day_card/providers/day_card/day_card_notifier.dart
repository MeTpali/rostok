import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'day_card_state.dart';

class DayCardNotifier extends StateNotifier<DayCardState> {
  DayCardNotifier() : super(const DayCardState.idle());

  Future<void> pullCard() async {
    state = const DayCardState.idle(isLoading: true);
    await Future<void>.delayed(const Duration(seconds: 1));
    state = const DayCardState.card(
      title: 'Пятерка пентаклей',
      description:
          'Сегодня выпала Пятёрка пентаклей. О, как же она может быть непростой! Эта карта говорит о финансовых потерях и чувстве изоляции. Возможно, ты столкнулся с трудностями в материальном плане или ощущаешь себя одиноким в своих заботах. Но не стоит унывать! Это временные испытания, которые могут научить тебя ценить то, что действительно важно. Помни, даже в самые мрачные времена можно найти свет - поддержка друзей или новые идеи могут изменить ситуацию. Верь в себя, и всё наладится!',
    );
  }

  Future<void> decode() async {
    final curState = state;
    state = curState.copyWith(isLoading: true);
    await Future<void>.delayed(const Duration(seconds: 1));
    state = curState;
  }
}
