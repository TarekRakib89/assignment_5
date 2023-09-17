import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 40,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            disabledBorder: OutlineInputBorder(),
            fillColor: Colors.white10,
            filled: true,
            hintText: "Search for Photos..",
            contentPadding:
                EdgeInsets.symmetric(vertical: 8.0, horizontal: 10)),
      ),
    );
  }
}
