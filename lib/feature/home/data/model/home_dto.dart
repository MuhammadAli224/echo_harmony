import '../../../../global_imports.dart';


part 'home_dto.freezed.dart';

part 'home_dto.g.dart';

@freezed
abstract class HomeDTO with _$HomeDTO {
const factory HomeDTO({
@JsonKey(name: "name") required String name,
@JsonKey(name: "image") required String image,
@JsonKey(name: "descreption") String? description,
}) = _HomeDTO;

factory HomeDTO.fromJson(Map<String, dynamic> json) =>
_$HomeDTOFromJson(json);
}
