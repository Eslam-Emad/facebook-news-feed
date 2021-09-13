import 'package:facebook_feed/bloc/post/post_event.dart';
import 'package:facebook_feed/bloc/post/post_states.dart';
import 'package:facebook_feed/repository/repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostBloc extends Bloc<PostEvent, PostStates> {
  PostRepository repository;

  PostBloc(PostStates initialState, this.repository) : super(initialState);

  @override
  Stream<PostStates> mapEventToState(event) async* {
    if (event is GatPostsEvent) {
      yield LoadingState();
      try {
        var posts = await repository.getAll();
        yield LoadedState(posts: posts);
      } catch (error) {
        yield ErrorState(message: error.toString());
      }
    }
  }
}
