import 'package:flutter/material.dart';

void main() => runApp(const Tacos());

class Tacos extends StatelessWidget {
  const Tacos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.tealAccent,
      debugShowCheckedModeBanner: false,
      title: 'Tacos',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Tacos mar y tierra',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1612783322327-32aee68ad0a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80')),
                      ),
                    ),
                    new Positioned(
                      // left: 30.0,
                      top: 290,
                      child: new Container(
                        width: 500,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tacos',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('Mar y tierra',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Text('\$260',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    Text('Tacos de cabeza',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Aliqua irure sunt ullamco officia nulla sit commodo pariatur consequat minim laborum non ea cillum. Eiusmod esse anim in anim fugiat excepteur ea amet qui ullamco consectetur excepteur consectetur dolor. Nostrud reprehenderit laboris deserunt amet incididunt commodo nostrud eu occaecat in.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 12),
                    ),
                    // Text('Mar y tierrassssssssssssssssssssssss',
                    //     textAlign: TextAlign.center,
                    //     style: TextStyle(
                    //         fontSize: 30,
                    //         fontWeight: FontWeight.bold,
                    //         color: Colors.white)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Comprar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
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
