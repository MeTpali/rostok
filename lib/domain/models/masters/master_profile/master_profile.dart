import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_profile.freezed.dart';

@freezed
class MasterProfile with _$MasterProfile {
  const factory MasterProfile({
    required int id,
    required String firstName,
    required String lastName,
    required String description,
    required String url,
    required String videoUrl,
    required bool isOnline,
    required double rating,
    required int reviewsCount,
    required int articlesCount,
    @Default(45) int timing, // среднее время занятия в минутах
    @Default(<String>[]) List<String> practices,
    @Default(<String>[]) List<String> topics,
  }) = _MasterProfile;

  // static Master fromModel(MasterModel master) => Master(
  //   id: master.id,
  //   firstName: master.firstName,
  //   lastName: master.lastName,
  //   description: master.about ?? '',
  //   url:
  //       'https://avatars.mds.yandex.net/i?id=c18d54be0eaf4d99edf680525a455c5eb8d4d110-4010157-images-thumbs&n=13',
  //   prana: 100,
  //   isOnline: true,
  //   rating: 4.6,
  //   timing: 20,
  //   reviewsCount: 150,
  //   birthDate: master.birthDate,
  //   birthTime: master.birthTime,
  //   gender: master.gender,
  //   birth_city: master.birthCity,
  // );
}
