import 'package:riverpod/riverpod.dart';
import '../model/book_model.dart';

final booksProvider = StateNotifierProvider<BookState, Book>((ref) {
  return BookState();
});

class BookState extends StateNotifier<Book> {
  BookState()
      : super(
          Book(
            title: 'become to lawyer',
            writer: 'May',
            price: 19.900,
            inventory: 42,
          ),
        );
}
