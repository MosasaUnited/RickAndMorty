import 'package:dio/dio.dart';
import 'package:rick_and_morty/core/constants/strings.dart';

class CharactersWebServices {
  late Dio dio;

  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 60), // 60 Seconds
      receiveTimeout: const Duration(seconds: 60),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    Response response = await dio.get('character');
    print(response.data.toString());
    return response.data['results'];
  }
  // now time to pass data to Repository >>>
}
