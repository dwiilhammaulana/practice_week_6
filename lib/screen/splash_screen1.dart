import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // =TODO:
        // karena akan membuat multiple widget 
        // maka membuat children yang bisa menampung banyak widget "children" 
        // membuat Image bulat
        // Membuat Title dengan warna hitam
        // Membuat subtitle
        // Membuat 3 bullet kecil
        // mulai dari warna terang diawal
        // Membuat Button Continue
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          const SizedBox(height: 25),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 104, 116, 104),
              image: DecorationImage(image: AssetImage("assets/images/welcome.png"),
              fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(height: 20),
          Text("Welcome",style: TextStyle(
            fontSize: 30,
            color: Colors.black
          )),
          Text("Bersiap menghadapi tantangan? \n Temukan solusi survival terbaik di sini.",style: TextStyle(
            fontSize: 15,
            color: Colors.black
          )),
         ], 
        ),
      ),
    );
  }
}
