import 'package:flutter/material.dart';
class DashboardApp extends StatefulWidget {
  @override
  State<DashboardApp> createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ChatDashboardScreen(),
    );
  }
}

class ChatDashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// -------------- Appbar--------------------------///
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: "Chat",
            style: TextStyle(fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "bot",
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white10 ,
                borderRadius: BorderRadius.circular(100)
              ),
                child: IconButton(icon: Icon(Icons.face), onPressed: () {})),
          ),

        ],
      ),
      /// -----------------------------BODY-----------------------------------///
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(Icons.chat_bubble_outline) ,
                    Text("New chat")
                  ],) ,
                  Row(
                    children: [
                      Icon(Icons.history) ,
                      Text("History")
                    ],
                  )

                ],
              ),
            ),
            /// Search Text field
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                hintText: "Write a question!",
                hintStyle: const TextStyle(color: Colors.white38),
                filled: true,
                fillColor: Colors.grey[900],
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white10 ,
                      borderRadius: BorderRadius.circular(100)
                    ),
                      child: const Icon(Icons.mic, color: Colors.white54)),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Tab Bar

            ListView.builder(itemBuilder: (context, index) {

            },) ,

            const SizedBox(height: 20),
            // Quick Questions Grid
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildCard("What is AI", Icons.ac_unit, Colors.blue),
                  _buildCard("Tell me a Joke", Icons.emoji_emotions, Colors.green),
                  _buildCard("Explain Machine Learning", Icons.computer, Colors.purple),
                  _buildCard("Climate Change?", Icons.cloud, Colors.pink),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildCard(String title, IconData icon, Color color) {
    return Card(
      color: Colors.grey[850],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: color),
              SizedBox(height: 10),
              Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
