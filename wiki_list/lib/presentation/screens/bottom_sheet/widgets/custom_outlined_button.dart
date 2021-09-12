import 'package:flutter/material.dart';
import 'package:wiki_list/presentation/utils/utils.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(
        Icons.create_new_folder,
        color: secondaryColor,
      ),
      label: Text(
        createNewFolder,
        style:
            Theme.of(context).textTheme.button?.copyWith(color: secondaryColor),
      ),
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 10,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              color: secondaryColor,
              width: defaultThickness,
            ),
          ),
        ),
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          secondaryColor.withOpacity(deafaultOpacity),
        ),
      ),
    );
  }
}
