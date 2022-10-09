import 'package:flutter/material.dart';
import 'package:flutter_application_1/Products/Products.dart';

class SearchBarWidget extends StatelessWidget with _PaddingUtility {
  SearchBarWidget({
    super.key,
    required this.textfieldText,
  });
  //  Classlara Ulaşmak için nesne //
  BorderUtilty borders = BorderUtilty();
  //  Dışarıdan atanacak değerler (çağrıldğı yerde) //
  final String textfieldText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: textfieldBoxDec(),
      child: Padding(
        padding: textfieldPadding,
        child: TextField(
          decoration: textfieldInputDec(),
        ),
      ),
    );
  }

  //   Input Dekorasyonu //
  InputDecoration textfieldInputDec() {
    return InputDecoration(
        border: InputBorder.none,
        prefixIcon: const Icon(Icons.search_outlined),
        hintText: textfieldText);
  }

  //    Box Dekorasyonu  //
  BoxDecoration textfieldBoxDec() {
    return BoxDecoration(
        color: Colors.deepPurple[100], borderRadius: borders.textfieldRadius);
  }
}

//  Classa özel padding
class _PaddingUtility {
  final EdgeInsets textfieldPadding = const EdgeInsets.all(8.0);
}
