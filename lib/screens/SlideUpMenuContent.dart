import 'package:flutter/material.dart';

class SlideUpMenuContent extends StatelessWidget {
  const SlideUpMenuContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width,
              height: 50,
              alignment: AlignmentDirectional.center,
              padding: EdgeInsets.all(16.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),// Importante: utiliza shrinkWrap para que el ListView se ajuste al contenido
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return MenuCard ();
              },
            ),
          ),
        ],
      ),
    );
  }
}


Widget MenuCard (){
  return Card(
    color: Color(0xFFD4D8D9),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Lugar del estacionamiento",
            style: TextStyle(
              color: Colors.redAccent,
              fontSize: 20,
              fontWeight: FontWeight.w800
            ),
            ),
          ),
          Row(
            children: [
              Icon(Icons.pin_drop),
              Text("Ubiacion del estacionamiento")
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.directions_car),
              Text("Numero total de estacionamientos")
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {

              }, child: Text(
                  "Ver Información",
                style: TextStyle(
                  color: Colors.white
                ),

              ),
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color(0xFF2B2D42)
                ),
              ),
              IconButton(onPressed: () {

              }, icon: Icon(Icons.navigation_outlined))
            ],
          ),
        ],
      ),
    ),
  );
}