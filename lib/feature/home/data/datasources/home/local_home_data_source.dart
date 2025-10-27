import '../../../../../global_imports.dart';

abstract class HomeLocalDataSource {
Future<HomeDTO?> getHome({bool Function(HomeDTO p1)? query});
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
final Box<HomeDTO> _box;

HomeLocalDataSourceImpl(this._box);


@override
Future<HomeDTO?> getHome({bool Function(HomeDTO p1)? query}) async {

final home = _box.values.cast<HomeDTO?>().firstWhere(
(model) => (query == null ||
(model != null && query(model))),
orElse: () => null);

return home;

}

}