import 'package:flutter/material.dart';

bool password = true;
IconData icon1 = Icons.remove_red_eye;

class LoginFormContent extends StatefulWidget {
  const LoginFormContent({super.key});

  @override
  State<LoginFormContent> createState() => _LoginFormContentState();
}

class _LoginFormContentState extends State<LoginFormContent> {
  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 92, 89, 89),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    );
    ;
    const border2 = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.deepPurple,
        width: 3,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    );
    ;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "GDSC Login",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 6,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: [
            const Image(
              image: AssetImage('assets/images/gdsc.png'),
            ),
            const SizedBox(),
            const Text(
              'Welcome to App Dev',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 92, 89, 89),
              ),
            ),
            const Text(
              'Login here',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 92, 89, 89),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //email
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 92, 89, 89),
                  ),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.person),
                  focusedBorder: border2,
                  enabledBorder: border,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //password
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                obscureText: password,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 92, 89, 89),
                  ),
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  focusedBorder: border2,
                  enabledBorder: border,
                  suffixIcon: GestureDetector(
                    onTap: () => setState(() {
                      if (password) {
                        password = false;
                        icon1 = Icons.remove_red_eye_outlined;
                      } else {
                        password = true;
                        icon1 = Icons.remove_red_eye;
                      }
                      print('set');
                    }),
                    child: Icon(icon1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: TextButton(
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 121, 13, 209)),
                    minimumSize: MaterialStatePropertyAll(
                      Size(double.infinity, 50),
                    ),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))))),
                onPressed: () {
                  setState(() {});
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
