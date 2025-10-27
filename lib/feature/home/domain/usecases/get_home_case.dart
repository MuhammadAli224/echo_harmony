import '../../../../global_imports.dart';


class GetHomeUseCase {
final HomeRepository repository;
GetHomeUseCase(this.repository);

Future<Either<Failure, ApiResponse<HomeEntity>>> call(CancelToken? cancelToken) {
return repository.fetchAll(cancelToken:cancelToken);
}
}
