import 'package:flutter_application_ab9/jsonn.dart';
Fimport 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'dios.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class MyApi {
  factory MyApi(Dio dio, {String baseUrl}) = _MyApi;

  @GET("/posts")
  Future<List<Post>> getPosts();
}
