
import 'package:flutter/material.dart';

class UserDetailsWidget extends StatefulWidget {
  const UserDetailsWidget({super.key});

  @override
  State<UserDetailsWidget> createState() => _UserDetailsWidgetState();
}

class _UserDetailsWidgetState extends State<UserDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 10.0,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle
                  ),
                ),
                const SizedBox(width: 10.0,),
                Column(
                  children: [
                    Text(
                        "Welcome",
                       style: TextStyle(
                         color: Colors.grey.shade700
                       ),
                    ),
                    const Text(
                        "Arikaran",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(Icons.notifications),
                const SizedBox(width: 10.0,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
