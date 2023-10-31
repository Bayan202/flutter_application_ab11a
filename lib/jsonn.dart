import 'package:json_annotation/json_annotation.dart';

part 'jsonn.g.dart';

@JsonSerializable()
class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}
