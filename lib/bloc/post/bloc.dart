import 'package:flutter_bloc/flutter_bloc.dart';
import '/bloc/post/post_event.dart';
import '/bloc/post/post_states.dart';
import '/repository/repository.dart';

class PostBloc extends Bloc<PostEvent, PostStates> {
  PostRepository repository;

  PostBloc(PostStates initialState, this.repository) : super(initialState);

  @override
  Stream<PostStates> mapEventToState(event) async* {
    if (event is GetPostsEvent) {
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
