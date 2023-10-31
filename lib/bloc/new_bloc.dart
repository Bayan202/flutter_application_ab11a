import 'package:flutter_application_ab9/const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'new_event.dart';
import 'new_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostInitial()) {
    on<FetchPostEvent>((event, emit) async {
      emit(PostLoading());
      try {
        final posts = await fetchPost();
        emit(PostLoaded(posts));
      } catch (e) {
        emit(PostError());
      }
    });
  }
}
