import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 10, 3, 44),
              centerTitle: true,
              toolbarHeight: 120, // augmente la hauteur pour placer les icônes au-dessus

              title: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
          
                       Row(
                        children: [
                              Image.asset("img/sun.png", width: 28,height: 28, color: Color.fromARGB(255, 223, 190, 3),),
                              const SizedBox(width: 6),
                              const Text("MÉTÉO",
                                         style: TextStyle(
                                         color: Color.fromARGB(255, 223, 190, 3),
                                        fontSize: 18,),),
                              ],
                          ),

          
          TextButton(
            onPressed: () {
              print("OUVERTURE PARAMÈTRES");
            },
            child: Row(
              children: [
                Image.asset("img/setting.png",
                             width: 28,
                             height: 28,
                             color: Colors.white, ),
                          const SizedBox(width: 6),
                          const Text("Paramètres",
                                style: TextStyle(color: Colors.white, fontSize: 18),),
                        ],
                      ),
          ),
        ],
      ),

              const SizedBox(height: 10),

      
                    const Text( "Comment va le temps aujourd'hui ?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.white, ),),
        ],
  ),
),

      body: Padding(padding:  const EdgeInsets.all(20),
      child: Row(
        children: [
          Image.asset("img/search.png", width: 25,height: 25, color: Colors.white,
          ),
          const Text("Rechercher une ville",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white, ),),
        ],
      )
      ),
        backgroundColor: const Color.fromARGB(255, 10, 3, 44),
    );
  }
}