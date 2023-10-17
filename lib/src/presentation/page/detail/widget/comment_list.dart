import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_clean_architecture/src/presentation/controller/controller.dart';

class CommentList extends ConsumerWidget {
  const CommentList({super.key, required this.postId});

  final int postId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(commentControllerProvider(postId: postId));
    return switch (state) {
      AsyncData(:final value) => _buildComment(value),
      AsyncError() => _error(),
      _ => _loading(),
    };
  }

  Widget _buildComment(CommentState state) {
    return Consumer(
      builder: (context, ref, child) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: state.comments.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            title: Text(state.comments[index].body),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(height: 1.0),
                ),
                Text(state.comments[index].name),
                Text(state.comments[index].email),
              ],
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
