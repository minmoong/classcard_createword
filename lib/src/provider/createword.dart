import 'package:dio/dio.dart' hide Headers;
import 'package:gitpod_flutter_quickstart/src/model/createword_response.dart';
import 'package:retrofit/retrofit.dart';

part 'createword.g.dart';

@RestApi(baseUrl: 'https://proxy.cors.sh/https://classcard.net/CreateWord')
@Headers({'x-cors-api-key': 'temp_e2b4617e52da94f7dcdf975793b057c1'})
abstract class CreateWord {
  factory CreateWord(Dio dio, {String baseUrl}) = _CreateWord;

  @POST('/saveSet')
  @FormUrlEncoded()
  Future<SaveSet> saveSet(@Body() Map<String, dynamic> params);

  @POST('/saveCard2')
  @FormUrlEncoded()
  Future<SaveCard2> saveCard2(@Field('data_obj') String dataObj);
}
