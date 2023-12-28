import 'package:flutter/material.dart';

class Babysitter extends StatefulWidget {
  const Babysitter({super.key});

  @override
  State<Babysitter> createState() => _BabysitterState();
}

class _BabysitterState extends State<Babysitter> {
  Future signInWithGoogle() async {
    //<UserCredential>
    // Trigger the authentication flow
    //final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    //if (googleUser == null) {
    //return;
    //}

    // Obtain the auth details from the request
    //final GoogleSignInAuthentication? googleAuth =
    //  await googleUser?.authentication;

    // Create a new credential
    //final credential = GoogleAuthProvider.credential(
    //accessToken: googleAuth?.accessToken,
    // idToken: googleAuth?.idToken,
    //);

    // Once signed in, return the UserCredential
    // await FirebaseAuth.instance.signInWithCredential(credential);
    // Navigator.of(context).pushNamed("Babysitter1");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Kiddokonnex"),
        backgroundColor: const Color.fromARGB(255, 1, 33, 59),
      ),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/image.jpg',
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Welcome Babysitters',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardAppearance: Brightness.dark, //bnjej

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 4, 62, 110)),
                        ),
                        suffixIcon: const Icon(
                          Icons.password,
                          color: Color.fromARGB(255, 1, 38, 68),
                        ),
                        border: InputBorder.none,
                        hintText: ' password',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: const BorderSide(
                                color: Color.fromARGB(255, 4, 62, 110)),
                          ),
                          suffixIcon: const Icon(
                            Icons.email,
                            color: Color.fromARGB(255, 1, 38, 68),
                          ),
                          border: InputBorder.none,
                          hintText: 'Email'),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 33, 59),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        //signInWithGoogle();
                      },
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                            image: DecorationImage(
                                image: AssetImage('images/image..png'))),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed("RegisterScreen");
                        },
                        child: Container(
                          height: 45.0,
                          width: 45.0,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0, 2),
                                  blurRadius: 6.0,
                                ),
                              ],
                              image: DecorationImage(
                                  image: AssetImage('images/image.png'))),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(10))
            ],
          ),
        ),
      )),
    );
  }
}
