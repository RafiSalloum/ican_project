import 'package:flutter/material.dart';

class DropListButton extends StatelessWidget {
  const DropListButton(
      {super.key,
      required this.hint,
      required this.list,
      required this.appliedOption,
      this.onTap});

  final String hint;
  final List<String> list;
  final String appliedOption;
  final void Function(String?)? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(hint, style: const TextStyle(fontFamily: 'poppins'),),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black54),
            color: Colors.white70,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          width: double.infinity,
          height: 65.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: DropdownButton<String>(
              underline: const SizedBox(),
                dropdownColor: Colors.white,
                style: Theme.of(context).textTheme.headlineSmall,
                // icon: const Icon(Icons.book),
                hint: Text(hint, style: const TextStyle(fontFamily: 'poppins'),),
                isExpanded: true,
                value: appliedOption == null || appliedOption.isEmpty
                    ? list[0]
                    : appliedOption,
                borderRadius: BorderRadius.circular(12.0),
                items: list
                    .map(
                      (String value) => DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(fontSize: 16, fontFamily: 'poppins'),
                        ),
                      ),
                    )
                    .toList(),
                onChanged: onTap,
              ),
            ),
        ),
      ],
    );
  }
}
