import 'package:flutter/material.dart';
import 'package:parking_finder/screens/SlideUpMenuContent.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class mapScreen extends StatefulWidget {
  const mapScreen({super.key});

  @override
  State<mapScreen> createState() => _mapScreenState();
}

class _mapScreenState extends State<mapScreen> {


  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      color: Color(0xFF8D9AAD),
      panel: SlideUpMenuContent(),
      body: Center(
        child: Text("Pantalla de mapa")
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24.0),
        topRight: Radius.circular(24.0),
      ),
      minHeight: 50.0, // Altura mínima del panel
      maxHeight: 500.0,
      header: Center(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: 60,
          alignment: AlignmentDirectional.center,

          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color(0xFF8D9AAD),
            border: Border.all(
              color: Color(0xFF8D9AAD),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Text(
            '1 estacionamiento',
            style: TextStyle(
              color: Colors.black, // Color del texto del encabezado
              fontSize: 18.0,
            ),
          ),
        ),
      ),
      // Altura máxima del panel
    );
  }
}
