import 'package:flutter/material.dart';

class CustomNotesAppBar extends StatelessWidget {
  const CustomNotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        const Spacer(),
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
          child: const Center(
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
