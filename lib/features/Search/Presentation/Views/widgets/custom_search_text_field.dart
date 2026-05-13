import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: BuildOutLineInputBorder(),
          focusedBorder: BuildOutLineInputBorder(),
          hintText: "Search",

          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Opacity(
              opacity: .8,
              child: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 22),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder BuildOutLineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
