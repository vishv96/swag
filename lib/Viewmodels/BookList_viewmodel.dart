import 'package:flutter/cupertino.dart';
import 'package:swag/Models/AudioBook.dart';

class BookListViewModel extends ChangeNotifier{

  // On load
  onLoad(){

  }

  getTitlename(){
    return "Book List";
  }

  getAudioBooks(){
    List<AudioBook> audioBooks = new List<AudioBook>();
    audioBooks.add(AudioBook(name: "Wonderful Life", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life Of Canada", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life Of Canada", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life Of Canada", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life Of Canada", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life Of Canada", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life Of Canada", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life", author: "Aarish Vijayan", description: "How to enjoy your life"));
    audioBooks.add(AudioBook(name: "Wonderful Life Of Canada", author: "Aarish Vijayan", description: "How to enjoy your life"));
    return audioBooks;
  }

}