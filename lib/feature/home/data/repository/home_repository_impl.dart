import '../../../../global_imports.dart';

class HomeRepositoryImpl implements HomeRepository {
final HomeRemoteDataSource _remote;
final HomeLocalDataSource _local;
final NetworkInfo _networkInfo;


HomeRepositoryImpl({required NetworkInfo networkInfo,
required HomeRemoteDataSource remote,
required HomeLocalDataSource local,

})
    : _remote = remote,
_local = local,
_networkInfo = networkInfo;



@override
Future<Either<Failure, ApiResponse<HomeEntity>>> fetchAll({CancelToken? cancelToken}) async {
try {
final apiResponse = await _remote.getHome();


if (apiResponse.success && apiResponse.data != null) {
final entityResponse = apiResponse.map((model) => model.toEntity());
return right(entityResponse);
// await local.cacheToken(apiResponse.data!.token!);

} else {
return left(ServerFailure(message: apiResponse.message));
}
} catch (e,t) {
return handleRepoDataError(e,t);
}
}

}