import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/bloc/post/bloc.dart';
import '/bloc/post/post_states.dart';
import '/repository/repository.dart';
import '/views/wrapper.dart';
import 'constants/palette.dart';
import 'data/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          PostBloc(InitialState(), PostRepository(posts: posts)),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Facebook',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Palette.scaffold),
        home: const Wrapper(),
      ),
    );
  }
}
