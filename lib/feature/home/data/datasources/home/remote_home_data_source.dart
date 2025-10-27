import '../../../../../global_imports.dart';

abstract class HomeRemoteDataSource {
  Future<ApiResponse<HomeDTO>> getHome();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiServices api;

  HomeRemoteDataSourceImpl(this.api);

  @override
  Future<ApiResponse<HomeDTO>> getHome() async {

    final response = await api.getData(
      HomeEndpoint.getHome,
      language: GlobalContext.context.locale.languageCode,
    );

    final apiResponse = ApiResponse<HomeDTO>.fromJson(
      response,
      (json) => HomeDTO.fromJson(json),
    );
    return apiResponse;
  }
}
