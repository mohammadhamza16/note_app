import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/note_list_view.dart';
import 'package:note_app/widgets/show_modal_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) => const ShowModalBottomSheet(),
            );
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Notes',
                iconData: Icons.search,
              ),
              Expanded(
                child: NoteListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
