import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  @override
  Widget build(BuildContext context) {


    Stream<String> getLoadingMessages() {
      final messages = <String>[
        'Cargando películas...',
        'Comprando palomitas...',
        'Cargando populares...',
        'Ya merito...',
        'Esto está tardando más de lo esperado :('
      ];

      return Stream.periodic(Duration(milliseconds: 1200), (step) {
        return messages[step];
      }).take(messages.length);
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Espere por favor...'),
          SizedBox(height: 10),
          CircularProgressIndicator(),
          SizedBox(height: 10),
          StreamBuilder(
            stream: getLoadingMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Text('Cargando...');

              return Text(snapshot.data!);
            },
          )
        ]
      )
    );
  }
}