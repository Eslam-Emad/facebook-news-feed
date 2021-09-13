import '/models/models.dart';

abstract class IPostRepository {
  Future<List<PostModel>?>? getAll() async {}

  Future<void>? add() {}

  Future<void>? delete() {}

  Future<void>? edit() {}
}

class PostRepository extends IPostRepository {
  final List<PostModel>? posts;

  PostRepository({this.posts});

  @override
  Future<List<PostModel>?>? getAll() async {
    try {
      return await Future.delayed(const Duration(seconds: 2), () => posts);
    } catch (error) {
      throw Exception(error);
      }
  }

  @override
  Future<void>? add() {}

  @override
  Future<void>? delete() {}

  @override
  Future<void>? edit() {}
}
