import 'package:flutter/material.dart';
import '../../../../../utils/constants/text_strings.dart';

class buttons extends StatelessWidget {
  const buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {}, child: Text(TTexts.signIn)));
  }
}