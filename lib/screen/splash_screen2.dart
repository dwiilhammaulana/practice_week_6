import 'package:flutter/material.dart';
import 'package:splash_screen/screen/splash_screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
          // Spacer(),
          const SizedBox(height: 25),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 104, 116, 104),
              image: DecorationImage(image: AssetImage("assets/images/welcome2.png"),
              fit: BoxFit.cover,
              )
            ),
          ),
          SizedBox(height: 20),
          Text("Welcome 2",style: TextStyle(
            fontSize: 30,
            color: Colors.black
          )),
          Text("Bersiap menghadapi tantangan?\nTemukan solusi survival terbaik di sini.",
          textAlign: TextAlign.center,
          style: TextStyle(  
            fontSize: 12,
            color: Colors.black
          )),
          SizedBox(height: 5),
          Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFC8E6C9),
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFC8E6C9),
                            ),
                          ),
                        ],
                      ),
                      
                      SizedBox(height: 40),
                           Container(
                            margin: EdgeInsets.all(40),
                            child: SizedBox(
                              height: 40,
                              width: double.infinity,
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.pushAndRemoveUntil(
                                context,
                              MaterialPageRoute(builder: (context) => Screen3()),
                              (Route<dynamic> route) => false,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                            ),
                             child: Text("Continue",style: TextStyle(
                              color: Colors.white,
                             )
                             )
                          ),
                          )
                          )
         ], 
        ),
      ),
    );
  }
}
