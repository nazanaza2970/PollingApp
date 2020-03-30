import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: PollingApp(),
    ));

class PollingApp extends StatefulWidget {
  @override
  _PollingAppState createState() => _PollingAppState();
}

class _PollingAppState extends State<PollingApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal, Colors.blue[700]],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text(
                'Logo',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(32),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(5, 5, 5, 1000),
                      blurRadius: 1,
                    )
                  ]),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey[100],
                        ),
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Registration Number',
                        hintStyle: TextStyle(color: Colors.grey[850]),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey[850]),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              color: Colors.teal[700],
              child: Text('Submit'),
              onPressed: () {},
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  'About Us',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
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
