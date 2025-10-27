import '../../../../global_imports.dart';


extension HomeMapper on HomeDTO {
HomeEntity toEntity() => HomeEntity(
name: name,
image: image,
description: description,
);
}
extension HomeEntityMapper on HomeEntity {
HomeDTO toModel() => HomeDTO(
name: name,
image: image,
description: description,
);
}

extension HomeModelMapperList on
List
<HomeDTO> {
List<HomeEntity> toEntity() {
return map((e) => e.toEntity()).toList();
}
}

extension HomeEntityMapperList on
List
<HomeEntity> {
List<HomeDTO> toModel() {
return map((e) => e.toModel()).toList();
}
}