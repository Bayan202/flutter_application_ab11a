abstract class PostState {}

class PostInitial extends PostState {}

class PostLoading extends PostState {}

class PostLoaded extends PostState {
  final List<dynamic> posts;

  PostLoaded(this.posts);
}

class PostError extends PostState {}
