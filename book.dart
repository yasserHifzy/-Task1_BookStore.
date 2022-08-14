import 'dart:io';

void main() {
  var Addvar = booke();
  Addvar.Add_book("1", "java", "3 star", "3.99 IRQ");
  Addvar.Add_book("2", "j", "4 star", "1.99 IRQ");
  Addvar.Add_book("3", "YASSER", "5 star", "119.99 USD");
  //Addvar.Deleted_Book("3");
  //Addvar.Deleted_Book("1");
  //Addvar.Update_Book("2", "java", "4 star", "21.99USD");
  Addvar.Search_Book("3");
  Addvar.show_yourMap();
}

class booke {
  Map<String, List<String>> someMap = {};
  void Add_book(Number_Book, Name_Book, Book_Evaluation, Book_Praice) {
    someMap.addAll({
      Number_Book: [Name_Book, Book_Evaluation, Book_Praice]
    });
  }

  void show_yourMap() {
    someMap.forEach((k, v) => print('${k}: ${v}'));
  }

  void Deleted_Book(Number_Book) {
    if (someMap.containsKey(Number_Book)) {
      someMap.remove(Number_Book);
      print("This $Number_Book is Deleted ");
    } else {
      print("this $Number_Book is not found");
    }
  }

  void Update_Book(String Number_Book, String New_Name_Book,
      String New_Book_Evaluation, String New_Book_Praice) {
    if (someMap.containsKey(Number_Book)) {
      someMap.addAll({
        Number_Book: [New_Name_Book, New_Book_Evaluation, New_Book_Praice]
      });
      print("This $Number_Book is Update ");
    } else {
      print("this $Number_Book is not found");
    }
  }

  void Search_Book(String Number_Book) {
    if (someMap.containsKey(Number_Book)) {
      print("Enter your Number_Book?");
      final name = stdin.readLineSync();
      print({someMap[name]});
      print("___" * 10);
    } else {
      print("*" * 10);
      print("This $Number_Book is not found \nthe found Is : ");
    }
  }
}
