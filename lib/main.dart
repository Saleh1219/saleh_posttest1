import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var tinggi = MediaQuery.of(context).size.height;
    var lebar  = MediaQuery.of(context).size.width;

    final ImageUrl = "https://tse1.mm.bing.net/th?id=OIP.lKLlp8sd1pZX367Mxxr84wHaDt&pid=Api&P=0&w=344&h=172";
    return Scaffold(appBar: AppBar(
      centerTitle: true,
      title: const Text("1915016119_S. Saleh Ali Al Idrus_Posstest1",),
    
    
      ),
      body: Container(
      
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
           gradient: const LinearGradient(
           begin: Alignment.topRight,
           end: Alignment.bottomLeft,
           colors: [
          Color.fromARGB(255, 33, 171, 176),
          Color.fromARGB(255, 121, 194, 228),
          Color.fromARGB(255, 20, 99, 164),
          ],
          stops: [
            0.2,
            0.5,
            1,
          ]
          ),
          border: Border.all(width: 10,
          color: Colors.blueGrey
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
        children: [
            Positioned.fill(
              child: Image.network(ImageUrl,
                // fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  Text('\n\n1915016119\n',
                      style: GoogleFonts.oswald(
                      textStyle : const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 46, 21, 11),
                      ),
                    ),
                  ),
                  Text('S. Saleh Ali Al Idrus ',
                      style: GoogleFonts.sancreek(
                      textStyle : const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 46, 21, 11),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}