
import 'home_screen.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pay_the_fee extends StatelessWidget {
  const Pay_the_fee({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Icon(
                        Icons.payment,
                        size: 100.0,
                      ),
                      Text("payment Of Fees", style: TextStyle(fontSize: 20.0)),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Account Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      prefixIcon: Icon(Icons.account_balance),
                      //suffixIcon: EmailInputElement.
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Amount',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      prefixIcon: Icon(Icons.attach_money),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    child: FlatButton(
                        splashColor: Colors.green[70],
                        hoverColor: Colors.blue[50],
                        textColor: Colors.blue,
                        disabledTextColor: Colors.black,
                        disabledColor: Colors.grey,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 120,
                          vertical: 25,
                        ),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0), side: const BorderSide(color: Colors.blue)),
                        child: const Text(
                          'Confirm',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ));
                        }),
                  ),
                ),
              ],
            )));
  }
}
