import 'package:flutter/material.dart';
import 'package:stroll_app/app/widgets/option_button.dart';

class Options extends StatelessWidget {
  const Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: OptionButton(
                letter: 'A',
                text: 'The peace in the\nearly mornings',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: OptionButton(
                letter: 'B',
                text: 'The magical\ngolden hours',
              ),
            ),
          ],
        ),
        SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: OptionButton(
                letter: 'C',
                text: 'Wind-down time\nafter dinners',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: OptionButton(
                letter: 'D',
                text: 'The serenity past\nmidnight',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
