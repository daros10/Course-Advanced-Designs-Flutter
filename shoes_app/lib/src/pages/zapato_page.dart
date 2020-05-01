import 'package:flutter/material.dart';
import 'package:shoes_app/src/widgets/custom_widgets.dart';

class ZapatoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppbar(texto: 'For you'),
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                ZapatoSizePreview(),
                ZapatoDescripcion(
                  titulo: 'Nike Max Air 720',
                  descripcion:
                      'The Nike Air Max 720 goes bigger than ever before with Nike’s tallest Air unit yet, which offers more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.',
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
