import 'package:flutter/material.dart';

class RegisterViem extends StatefulWidget {
  const RegisterViem({super.key});

  @override
  State<RegisterViem> createState() => _RegisterViemState();
}

class _RegisterViemState extends State<RegisterViem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/d7.jpg'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Login to your account'),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  // hintText: 'Enter y email',
                  label: const Text('Name'),
                  prefixIcon: const Icon(Icons.email_rounded),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue))),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  label: const Text('Email'),
                  //hintText: 'Enter y email',
                  prefixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  // hintText: 'Enter y email',
                  label: const Text('Password'),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.blue))),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: const Text('Login')),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('if you have not an account'),
                TextButton(onPressed: () {}, child: const Text('Login Now'))
              ],
            )
          ],
        )),
      ),
    ));
  }
}
