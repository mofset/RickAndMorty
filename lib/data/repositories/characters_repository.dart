import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/models/character_model.dart';

import '../models/characters_response_model.dart';

part 'characters_repository.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/character")
  Future<CharactersResponseModel> getCharactersAsync({
    @Query("page") int? page,
    @Query("name") String? name,
    @Query("status") String? status,
    @Query("species") String? species,
    @Query("gender") String? gender,
  });

  @GET("/character/{ids}")
  Future<List<CharacterModel>> getCharactersByIdsAsync(@Path("ids") String ids);

  @GET("/character/avatar/{id}.jpeg")
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> downloadImage(@Path("id") String id);
}
