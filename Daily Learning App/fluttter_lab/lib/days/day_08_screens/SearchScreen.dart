import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {

  @override
  State<SearchScreen> createState() => _SearchScreenState();

}

class _SearchScreenState extends State<SearchScreen>{

  final TextEditingController searchController =
    TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          "Search Bar",
          style: TextStyle(
            color: Colors.grey.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("SearchBar"),
          SizedBox(height: 10,),
          SizedBox(//height aur width dene k liye 
            height: 55,
            width: 320,
            child: TextField(
              controller: searchController,

              decoration: InputDecoration(
                hintText: "Search Something...",

                prefixIcon: Icon(Icons.search),

                filled: true,
                fillColor: Colors.white,
                
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey.shade300
                  ),
                ),

                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.teal,
                    width: 2,
                  ),
                ),

                suffixIcon: IconButton(
                  onPressed: (){
                    searchController.clear();
                  }, 
                  icon: Icon(Icons.clear)
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}