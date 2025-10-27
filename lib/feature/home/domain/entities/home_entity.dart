import '../../../../global_imports.dart';


part 'home_entity.freezed.dart';

@freezed
abstract class HomeEntity with _$HomeEntity {
const factory HomeEntity({

required String name,
required String image,
String? description,

}) = _HomeEntity;
}
