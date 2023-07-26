import 'package:flutter/material.dart';
class MyLogin extends StatefulWidget { // ye stateful hai
  const MyLogin({Key? key}) : super(key: key);
  @override
  State<MyLogin> createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container( // ye 1 container bnaya h pura page hi dabba h
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/login.png'), fit: BoxFit.cover
        )
      ),
      child: Scaffold( // pura page cover krega
        backgroundColor: Colors.transparent,
        body: Stack( //columnwise b le skte the
          children: [
            Container( // head body wala container
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text('Welcome \n Welcome \n bhai Welcome ' ,
              style: TextStyle(color: Colors.white, fontSize: 33),
              ) ,
            ),
            SingleChildScrollView( // ye page upr scroll kr dega
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),

                child: Column( // column bnayega alg alg
                  children: [
                    TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email ',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox( //box ke beech me gap krne k liye
                      height: 30,
                    ),
                    TextField(
                      obscureText: true, // paasword hidden krne k liye
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Sign In ', style: TextStyle(
                        color: Color(0xff4c505b),
                        fontSize: 27, fontWeight: FontWeight.w500
                      ) ,
                      ),
                        CircleAvatar(
                          radius: 30,
                            backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon: Icon(Icons.arrow_forward,
                          ),
                        )
                        )
                      ],

                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        }, child: Text('Sign up ', style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.blue,
                        ),)),
                        TextButton(onPressed: () {}, child: Text('Forget Passwordo ', style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Colors.blue,
                        ),))



                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
