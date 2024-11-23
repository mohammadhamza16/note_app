import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.orange[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'Build Your Career with \n Tharwat Samy',
                style: TextStyle(
                  color: Colors.black.withOpacity(.3),
                  fontSize: 16,
                ),
              ),
            ),
            trailing: const Icon(
              FontAwesomeIcons.trash,
              size: 18,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              '22,novamber 2024',
              style: TextStyle(
                color: Colors.black.withOpacity(.3),
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
