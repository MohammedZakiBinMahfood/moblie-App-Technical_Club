import 'OOP challenge.dart';

void main() {
  Book book1 = Book('1984', 'George Orwell', 1949);
  Book book2 = Book('To Kill a Mockingbird', 'Harper Lee', 1960);
  Book book3 = Book('The Great Gatsby', 'F. Scott Fitzgerald', 1925);

  User user1 = User('Alice', 101);
  User user2 = User('Bob', 102);

  Library library = Library();
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  library.searchBook('1984');
  library.removeBook(book1);
  library.searchBook('1984');
  library.searchBook('To Kill a Mockingbird');
}
