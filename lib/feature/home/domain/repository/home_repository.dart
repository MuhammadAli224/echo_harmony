import '../../../../global_imports.dart';

abstract class HomeRepository {
Future<Either<Failure, ApiResponse<HomeEntity>>> fetchAll({CancelToken? cancelToken});

}
