import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_clean_architecture/src/presentation/controller/controller.dart';
import 'package:flutter_riverpod_clean_architecture/src/presentation/page/detail/detail_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postControllerProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: switch (state) {
          AsyncData(:final value) => _buildList(value),
          AsyncError() => _error(),
          _ => _loading(),
        });
  }

  Widget _buildList(PostState state) {
    return Consumer(
      builder: (context, ref, child) =>
          NotificationListener<ScrollNotification>(
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount:
              state.hasReachEnd ? state.posts.length : state.posts.length + 1,
          itemBuilder: (context, index) => index != state.posts.length
              ? Card(
                  child: ListTile(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(id: state.posts[index].id),
                      ),
                    ),
                    leading: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 32.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          '${index + 1}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      state.posts[index].title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    subtitle: Text(
                      state.posts[index].body,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              : const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 32.0),
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
        ),
        onNotification: (notification) {
          if (notification.metrics.extentBefore ==
              notification.metrics.maxScrollExtent) {
            ref.read(postControllerProvider.notifier).loadMore();
          }
          return false;
        },
      ),
    );
  }

  Widget _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _error() {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
