import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey[300],
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUzrkDf5tXMlscJ5U0Nr3IHG-7lc_51zvIqg&s',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('NIM : 5220411006'),
                      Text('Nama : Faridz Ridha Alfarisyi'),
                      Text('Prodi : Informatika'),
                      Text('Mata Kuliah : Movile & Web Service'),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 218, 218, 218),
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                  itemCount: 4, 
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: double.infinity, 
                            height: 150,
                            color: Colors.grey[300],
                            child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcxX7uU3Ax-cxlgU3wDMYfMRodNXpL_uGLew&s',
                            fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 10),
                          Text('Kamu', style: TextStyle(fontSize: 16)),
                          Text('Lorem ipsum bajgrkjakjd',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                    );
                  },
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    crossAxisSpacing: 10, 
                    mainAxisSpacing: 10, 
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
