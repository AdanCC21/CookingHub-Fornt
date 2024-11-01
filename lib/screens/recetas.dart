import 'package:flutter/material.dart';
import 'package:testing_1/screens/listaCompras.dart';
import 'package:testing_1/screens/chatBot.dart';

class recetas extends StatefulWidget{
  const recetas({super.key});

  @override
  State<StatefulWidget> createState() => _recetas();
}

class _recetas extends State<recetas>{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          // Fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/Background.png"),
              fit: BoxFit.cover)
            ),
          ),
          // Titulo de Recetas
          Container(
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            margin: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10
            ),

            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Recetas", style: 
              TextStyle(color: Colors.white, fontFamily: "Poppins", 
              fontSize: 36, fontWeight: FontWeight.bold),)],
            ),
          ),

          // Secciones
          Container(
            decoration: const BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),

            margin: const EdgeInsets.only(
              top: 80,
              left: 10,
              right: 10
            ),
            width: double.infinity,

            child: Column(
              children: [
                // --------- Lista superior
                Container(
                  margin: const EdgeInsets.all(10),
                  height: screenHeight*0.15,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 0.9,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 168, 50, 1),
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const chatBot()));
                                }, icon: Image.asset("assets/iconos/camera.png",width: 80,)),
                                const Text("Camara")
                              ],
                              
                            ),
                          ),
                        )
                      ),
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 0.9,
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 168, 50, 1),
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const chatBot()));
                                }, icon: Image.asset("assets/iconos/chat.png",width: 80,)),
                                const Text("Chat"),
                              ]
                            ),
                          ),
                        )
                      ),
                    ],
                  ),

                ),
                // --------- Favoritos
                Row(
                 mainAxisAlignment: MainAxisAlignment.center, 
                 children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(16))
                    ),

                    margin: const EdgeInsets.all(16),

                    child: const Text("Favoritos"),
                  )
                 ],
                ),
                // --------- Recetas semanales 
                Row(
                 mainAxisAlignment: MainAxisAlignment.center, 
                 children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(16))
                    ),

                    margin: const EdgeInsets.all(16),

                    child: const Text("Recetas semanales"),
                  )
                 ],
                )
              ],
            ),
          ),


          // Hot Bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              
              decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 170, 50, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16)
                )
              ),
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: (){}, icon: Image.asset("assets/HotBar/Home.png",width: 30,)),
                  IconButton(onPressed: (){}, icon: Image.asset("assets/HotBar/Games.png",width: 30,)),
                  const SizedBox(width: 60,),
                  IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const listaScreen()));}, 
                  icon: Image.asset("assets/HotBar/Lista.png",width: 30,),),
                  IconButton(onPressed: (){}, icon: Image.asset("assets/HotBar/Perfil.png",width: 30,)),
                ],
              ),
            ),
          ),
          
          // Icono central
          Align(
            alignment: Alignment.bottomCenter,
            child: Positioned(
              child: IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const recetas()));
              },
              padding: const EdgeInsets.only(
                bottom: 2
              ), 
              icon: Image.asset("assets/HotBar/Gorrito.png",width: 50,)) ,
              ),
          )
        ],
      ),
    ));
  }
}