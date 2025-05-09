class Book {
  String _title;
  String _author;
  int _publicationYear;

  Book(this._title, this._author, this._publicationYear);

  String get title => _title;
  String get author => _author;
  int get publicationYear => _publicationYear;

  void set title(String title) {
    _title = title;
  }

  void set author(String author) {
    _author = author;
  }

  void set publicationYear(int year) {
    _publicationYear = year;
  }
}

class User {
  String _name;
  int _memberShipNumber;
  List<Book> _borrowedBooks = [];

  User(this._name, this._memberShipNumber);

  String get name => _name;
  int get memberShipNumber => _memberShipNumber;
  List<Book> get borrowedBooks => _borrowedBooks;

  void set;
}

class Library implements LibraryOperations {
  List<Book> _books = [];

  List<Book> get books => _books;

  @override
  void addBook(Book book) {
    _books.add(book);
  }

  @override
  void removeBook(Book book) {
    _books.remove(book);
  }

  @override
  void searchBook(String title) {
    for (var book in _books) {
      if (book.title == title) {
        print(
          'Book found: ${book.title} by ${book.author} (${book.publicationYear})',
        );
        return;
      }
    }
    print('Book not found.');
  }
}

abstract class LibraryOperations {
  void addBook(Book book);
  void removeBook(Book book);
  void searchBook(String title);
}

class NormalMembers extends User {
  NormalMembers(String name, int memberShipNumber)
    : super(name, memberShipNumber);

  void SearchLibrary(Library library, String title) {
    library.searchBook(title);
  }
}

class PremiumMembers extends User {
  PremiumMembers(String name, int memberShipNumber)
    : super(name, memberShipNumber);
}
