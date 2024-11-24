import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_notes_app_bar.dart';
import 'package:note_app/widgets/note_list_view.dart';
import 'package:note_app/widgets/show_modal_bottom_sheet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
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
              CustomNotesAppBar(),
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
