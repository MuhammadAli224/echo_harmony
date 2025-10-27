import '../../../../../global_imports.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> with CubitLifecycleMixin<HomeState> {
final GetHomeUseCase controller;

HomeCubit(this.controller) : super(const HomeState.initial());

Future<void> fetchItems() async {
  emit(const HomeState.loading());


final  result =
await controller(cancelToken);
if (isClosed) return;
// result.fold(
// (failure) => safeEmit(HomeState.error(failure.message)),
// (home) => safeEmit(HomeState.loaded(home)),
// );
}
  }



