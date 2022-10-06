import 'package:fiverpod_app_4/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class ScrollPage extends ConsumerStatefulWidget {
  ScrollPage({Key? key}) : super(key: key);

  @override
  _ScrollPageState createState() => _ScrollPageState();
}

class _ScrollPageState extends ConsumerState<ScrollPage> {
  final PagingController<int, User> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      addUsers(pageKey);
    });

    super.initState();
  }

  Future<void> addUsers(int num) async {
    var newUsers = await ref.read(userProvider.notifier).makeUser(num);
    var last = ref.watch(userProvider).length >= 100 ? true : false;
    try {
      if (last) {
        _pagingController.appendLastPage(newUsers);
      } else {
        final nextNum = num + 20;
        _pagingController.appendPage(newUsers, nextNum);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite Scroll'),
      ),
      body: PagedListView<int, User>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<User>(
          itemBuilder: (context, item, index) {
            return ListTile(
              title: Text(
                item.name + ': ${item.id}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {},
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
