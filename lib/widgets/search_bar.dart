import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:reto_dev_algorit/providers/search_provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);
  //widget to search bar
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final searchProvider = Provider.of<SearchProvider>(context);

    return Container(
      padding: EdgeInsets.all(size.height * 0.01),
      margin: EdgeInsets.symmetric(horizontal: size.height * 0.01),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(75, 106, 155, 0.5),
        borderRadius: BorderRadius.circular(size.height * 0.015),
      ),
      child: TextField(
        onChanged: (value) => searchProvider.typing = value,
        decoration: InputDecoration(
          hintText: 'Search GitHub username...',
          prefixIcon: Icon(Icons.search, size: size.height * 0.04),
          suffixIcon: ElevatedButton(
            child: searchProvider.isLoading
                ? const SizedBox(
                    width: 10,
                    height: 10,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ))
                : const Text('Search'),
            onPressed: searchProvider.isLoading
                ? null
                : () {
                    if (searchProvider.typing.isNotEmpty) {
                      FocusScope.of(context).unfocus();
                      searchProvider.getPerson();
                    }
                  },
          ),
        ),
      ),
    );
  }
}
