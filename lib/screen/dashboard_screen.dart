import 'package:chat_bot_app/utils/colors.dart';
import 'package:flutter/material.dart';

import '../utils/util_helper.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Discover",
          style: mTextStyle18(),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
                color: AppColors.appGreenColor,
                borderRadius: BorderRadius.circular(22)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
              child: Text(
                "50% on pro",
                style: mTextStyle18(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.account_circle_outlined))
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/icon/new_chat.png",
                        height: 30,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "New Chat",
                        style: mTextStyle15(),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icon/history.png",
                        height: 20,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "History",
                        style: mTextStyle15(),
                      )
                    ],
                  ),
                ],
              ),
            ) ,

          ],
        ),
      ),
    );
  }
}
