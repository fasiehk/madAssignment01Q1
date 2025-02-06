import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isNewUser = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/download.png',
                    height: 150,
                  ),
                  SizedBox(height: 20),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.all(4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => setState(() => isNewUser = false),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: !isNewUser ? Colors.purple : Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Existing",
                                style: TextStyle(
                                  color: !isNewUser ? Colors.white : Colors.purple,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => setState(() => isNewUser = true),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: isNewUser ? Colors.purple : Colors.white,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "New User",
                                style: TextStyle(
                                  color: isNewUser ? Colors.white : Colors.purple,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: 'Username'),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(labelText: 'Email'),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          decoration: InputDecoration(labelText: 'Password'),
                          obscureText: true,
                        ),
                        SizedBox(height: 10),
                        if (isNewUser)
                          TextField(
                            decoration: InputDecoration(labelText: 'Confirm Password'),
                            obscureText: true,
                          ),
                        SizedBox(height: 20), // Space before the button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                          ),
                          child: Text(
                            isNewUser ? 'Sign Up' : 'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Only show Forgot Password and OR line if not new user
                  if (!isNewUser) ...[
                    SizedBox(height: 10), // Space before Forgot Password
                    Container(
                      color: Colors.purple, // Same color as the app background
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    // OR Line
                    SizedBox(height: 10), // Space before OR line
                    Row(
                      children: [
                        Expanded(child: Divider(color: Colors.white)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            'OR',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(child: Divider(color: Colors.white)),
                      ],
                    ),
                    // Social media login buttons
                    SizedBox(height: 10), // Space before social buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Image.asset(
                            'assets/downloadg.png', // Replace with your Google logo asset
                            width: 40,
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                        SizedBox(width: 20),
                        IconButton(
                          icon: Image.asset(
                            'assets/downloadf.png', // Replace with your Facebook logo asset
                            width: 40,
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
