import 'package:flutter/material.dart';

class CustomNotesAppBar extends StatelessWidget {
  const CustomNotesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
        ),
        const Spacer(),
        Container(
          color: Colors.white.withOpacity(.05),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16,
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
