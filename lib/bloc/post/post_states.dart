import 'package:equatable/equatable.dart';
import '/models/models.dart';

class PostStates extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitialState extends PostStates {}

class LoadingState extends PostStates {}

class LoadedState extends PostStates {
  final List<PostModel>? posts;

  LoadedState({this.posts});
}

class ErrorState extends PostStates {
  final String? message;

  ErrorState({this.message});
}
