import 'package:flutter/material.dart';
import 'package:facebook_feed/bloc/post/bloc.dart';
import 'package:facebook_feed/bloc/post/post_event.dart';
import 'package:facebook_feed/bloc/post/post_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '/widgets/widgets.dart';

import 'components/components.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TrackingScrollController scrollController = TrackingScrollController();
  late final PostBloc bloc;

  @override
  void initState() {
    bloc = BlocProvider.of<PostBloc>(context);
    bloc.add(GetPostsEvent());
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: BlocBuilder<PostBloc, PostStates>(
          builder: (context, state) {
            if (state is InitialState || state is LoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ErrorState) {
              return Text(state.message.toString());
            } else if (state is LoadedState) {
              return Responsive(
                mobile: MobileHome(
                  scrollController: scrollController,
                  posts: state.posts!,
                ),
                desktop: WebHome(
                  scrollController: scrollController,
                  posts: state.posts!,
                ),
              );
            }
            return const Text("..Oops");
          },
        ),
      ),
    );
  }
}
