import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_bloc/home_bloc.dart';

class SeacrhWidget extends StatelessWidget {
  SeacrhWidget({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var homeBloc = context.read<HomeBloc>();
    String sortBy = '';
    return Form(
      child: Form(
        key: formKey,
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: textController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Field ini harus diisi';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          homeBloc.add(HomeEvent.onGetDataFromServer(
                              seacrh: textController.text, sortBy: sortBy));
                        }
                        return;
                      },
                      child: const Icon(Icons.search)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                  ),
                  hintText: 'Masukkan teks...',
                  hintStyle: const TextStyle(color: Colors.grey),
                ),
              ),
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    value: 'relevancy',
                    child: Text('Relevan'),
                  ),
                  PopupMenuItem(
                    value: 'popularity',
                    child: Text('Terpopuler'),
                  ),
                  PopupMenuItem(
                    value: 'publishedAt',
                    child: Text('Terbaru'),
                  ),
                ];
              },
              onSelected: (value) {
                sortBy = value;
                homeBloc.add(HomeEvent.onGetDataFromServer(
                    seacrh: textController.text, sortBy: sortBy));
                print(sortBy);
              },
            )
          ],
        ),
      ),
    );
  }
}
