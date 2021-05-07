import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swag/Models/AudioBook.dart';
import 'package:swag/Viewmodels/BookList_viewmodel.dart';

class BookList extends StatefulWidget{
  BookList({Key key,this.title}) : super (key: key);
  // Page title
  final String title;
  @override
  _BookList createState() => _BookList();
}


class _BookList extends State<BookList>{

  @override
  void initState() {
    super.initState();
    // On load call
    Provider.of<BookListViewModel>(context, listen: false).onLoad();
  }

  @override
  Widget build(BuildContext context) {

    var booklistViewModel = Provider.of<BookListViewModel>(context);

    return Scaffold(
      body: Stack(
        children: [
          // Blue back drop
          _buildBackDrop(context),
          // Listing container
          CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              _buildAppBar(context),
              _buildAudioBookListing(context, booklistViewModel.getAudioBooks() )
            ],
          )
        ],
      )
    );
  }
  
  // Back drop blue
  Widget _buildBackDrop(BuildContext context){
    return Container(
      height: 200,
      padding:  const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[600]),
    );
  }

  //Sliver App bar
  Widget _buildAppBar(BuildContext context){
    return SliverAppBar(
      backgroundColor: Colors.blue[600],
      title: Row(
        children: [
          Icon(
              Icons.menu_rounded
          ),
          _buildDropButton(context, Text("James alison"))
        ],
      ),
    );
  }

  // Audio books listing
  Widget _buildAudioBookListing(BuildContext context, List<AudioBook> books){
    return SliverList(
        delegate: SliverChildListDelegate(
            [
              AudioBooks(
                  audioBooks: books
              ),
              // Container(decoration: BoxDecoration(color: Colors.red),height: 50,),
              // Container(decoration: BoxDecoration(color: Colors.indigo),height: 300,),
              // Container(decoration: BoxDecoration(color: Colors.amber),height: 100,)
            ]
        )
    );
  }

  // Drop button
  Widget _buildDropButton(BuildContext context, Widget title){
   return ButtonBar(
      buttonHeight: 40,
      buttonMinWidth: 120,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24,top: 8,right: 0, bottom: 8),
          child: title,
        ),
        Padding(
          padding: EdgeInsets.only(left: 0,top: 8,right: 0, bottom: 8),
          child: Icon(
              Icons.arrow_drop_down_outlined
          ),
        )
      ],
    );
  }

}

///////// Listing horizontal Audio book list//////////////
class AudioBooks extends StatefulWidget{
  final List<AudioBook> audioBooks;

  const AudioBooks({Key key, this.audioBooks}) : super(key: key);

  @override
  _AudioBooks createState() => _AudioBooks();
}

class _AudioBooks extends State<AudioBooks>{

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context,index) => _buildAudio(context, widget.audioBooks[index]),
                childCount: widget.audioBooks.length,
              )
          )
        ],
      ),
    );
  }

  Widget _buildAudio(BuildContext context, AudioBook book){
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.redAccent[500]
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 8,right: 8,top: 16,bottom: 24),
        child: Card(
          elevation: 12,
          child: Column(
            children: [
              Text(book.name),
              Text(book.description),
              Text(book.author)
            ],
          ),
        ),
      ),
    );
  }

}