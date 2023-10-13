import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_clean_architecture/src/presentation/src/controller/controller.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(detailControllerProvider(id));
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        body: switch (state) {
          AsyncData(:final value) => _buildDetail(value),
          AsyncError(:final error) => Text('Error: $error'),
          _ => const Center(child: CircularProgressIndicator()),
        });
  }

  Widget _buildDetail(DetailState state) {
    return Consumer(
      builder: (context, ref, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.post.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 12.0),
                Text(state.post.body),
                const SizedBox(height: 20.0),
                Divider(height: 1.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://source.unsplash.com/random/100x100/?img=${state.user.id}'),
            ),
            title: Text(
              state.user.username,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(state.user.email),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
            child: Column(
              children: [
                Divider(height: 1.0),
                const SizedBox(height: 20.0),
              ],
            ),
          )
        ],
      ),
    );
  }
}
