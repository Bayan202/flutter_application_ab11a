import 'package:dio/dio.dart';
import 'package:flutter_application_ab9/dios.dart';
import 'package:flutter_application_ab9/jsonn.dart';

const POST_URL = 'https://jsonplaceholder.typicode.com/posts';

final dio = Dio();
final apiService = MyApi(dio);

Future<List<Post>> fetchPost() async {
  return await apiService.getPosts();
}
