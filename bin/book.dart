import 'library.dart';

class Book extends Library {
  String author;
  Book(String title, int year, this.author) : super(title, year);
  void getDetails() {
    print('My book:$title, Year:$year, Author:$author');
  }
}

class Magazine extends Library {
  int issueNumber;
  Magazine(String title, int year, this.issueNumber) : super(title, year);
  void getDetails() {
    print('MY magazine:$title,Year:$year,IssueNumber:$issueNumber');
  }
}

void main() {
  late List<Library> items;
  items = [Book('math', 1985, 'Newton'), Magazine('صباحك مصري', 2022, 3333)];
  for (var item in items) {
    item.getDetails();
  }
}
