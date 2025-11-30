import 'package:freezed_annotation/freezed_annotation.dart';

import '../master_model/master_model.dart';

part 'master.freezed.dart';

@freezed
class Master with _$Master {
  const factory Master({
    required int id,
    required String firstName,
    required String lastName,
    required String description,
    required String url,
    required int prana,
    required bool isOnline,
    required double rating,
    required int timing,
    required int reviewsCount,
    String? birthDate,
    String? birthTime,
    String? gender,
    String? birth_city,
  }) = _Master;

  static Master fromModel(MasterModel master) => Master(
    id: master.id,
    firstName: master.firstName,
    lastName: master.lastName,
    description: master.about ?? '',
    url:
        'https://avatars.mds.yandex.net/i?id=c18d54be0eaf4d99edf680525a455c5eb8d4d110-4010157-images-thumbs&n=13',
    prana: master.prana ?? 100,
    isOnline: true,
    rating: master.rating,
    timing: master.timing ?? 45,
    reviewsCount: master.reviewsCount,
    birthDate: master.birthDate,
    birthTime: master.birthTime,
    gender: master.gender,
    birth_city: master.birthCity,
  );
}
