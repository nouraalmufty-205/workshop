import 'package:flutter/material.dart';

class SearchSlider extends StatelessWidget {
  const SearchSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        hintText: "Search Doctor",
        suffixIcon: Icon(Icons.mic_outlined),

        prefixIcon: Icon(Icons.search),
        filled: true,
        fillColor: Colors.grey[40],
      ),
    );
  }
}
