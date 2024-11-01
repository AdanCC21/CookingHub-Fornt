import 'package:flutter/material.dart';
import 'package:testing_1/screens/recetas.dart';


class listaScreen extends StatefulWidget{
  const listaScreen({super.key});

  @override
  State<StatefulWidget> createState() => _listaScreen();
}

class _listaScreen extends State<listaScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Background.png"),
                fit: BoxFit.cover)
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
              ),
          ],
        )
      ),
    );
  }
}
