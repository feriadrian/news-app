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
    return Form(
      child: Form(
        key: formKey,
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
                  print('=====onTap=======');
                  print(textController.text);
                  if (formKey.currentState!.validate()) {
                    print(textController.text);
                    context.read<HomeBloc>().add(
                        HomeEvent.onGetDataFromServer(textController.text));
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
    );
  }
}
