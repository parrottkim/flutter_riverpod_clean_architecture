import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_clean_architecture/src/presentation/controller/controller.dart';
import 'package:flutter_riverpod_clean_architecture/src/presentation/page/detail/widget/comment_list.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(detailControllerProvider(id: id));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        body: switch (state) {
          AsyncData(:final value) => _buildDetail(context, value),
          AsyncError() => _error(),
          _ => _loading(),
        });
  }

  Widget _buildDetail(BuildContext context, DetailState state) {
    return Consumer(
      builder: (_, ref, child) => LayoutBuilder(
        builder: (context, constraints) => ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      state.post.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(state.post.body),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Divider(height: 1.0),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://source.unsplash.com/random/100x100/?img=${state.user.id}'),
                    ),
                    title: Text(
                      state.user.username,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(state.user.email),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Divider(height: 1.0),
                  ),
                  CommentList(postId: state.post.id),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _error() {
    return const Center(
      child: Column(
        children: [
          Icon(
            Icons.warning_amber,
            size: 60.0,
          ),
          Text('Error occured!'),
        ],
      ),
    );
  }
}
