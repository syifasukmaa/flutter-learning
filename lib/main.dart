import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile Saya',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),       
          ),
          backgroundColor: Colors.purple[400],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
          
            children: [
              Container(
                width: double.infinity,
                height: 180,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 6),
                    ),
                  ],
                ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: Text('A', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                      ),
                      Text('Andi Saputra', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      Text('Flutter Developer', style: TextStyle(color: Colors.grey[700]),)
                    ]
                  )
                
              ),
              SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
               decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withValues(alpha: 0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),  
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
                  Text('STATISTIK', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                     const SizedBox(height: 12),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                             Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.indigo[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      '48',
                      style: TextStyle(color: Colors.indigo, fontSize: 20),
                    ),
                    Text(
                      'Commit',
                      style: TextStyle(color: Colors.indigo, fontSize: 14),
                    ),
                  ],
                ),
                            ),
                             SizedBox(width: 30),
                 Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.orange[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      '48',
                      style: TextStyle(color: Colors.orange, fontSize: 20),
                    ),
                    Text(
                      'Proyek',
                      style: TextStyle(color: Colors.orange, fontSize: 14),
                    ),
                  ],
                ),
                            ),
                             SizedBox(width: 30),
                 Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                   Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                    Text(
                      '5',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(width: 4),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 18,
                    ),
                  ],
                ),
                    Text(
                      'Rating',
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ],
                ),
                            ),
                   ],
                ),
              ),
            ],
          ),
            ),
           SizedBox(height: 20),
           Container(
            height: 130,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withValues(alpha: 0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tentang Saya', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                SizedBox(height: 8),
                Text('Suka ngoding Flutter sejak 2021. Sedang belajar dari playlist Kuldii Project 🚀', style: TextStyle(color: Colors.grey[700], fontSize: 16),)
              ],
            ),
           ),
           Spacer(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.purpleAccent,
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text('Edit Profil'),
            )
            ],
          ),

        ),
      )
    );
  }
}