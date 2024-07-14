import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 300,
          height: 70,
          padding: const EdgeInsets.all(10),
          child: TextField(
            cursorColor: const Color(0xFF004182),
            decoration: InputDecoration(
              
              hintText: 'What do you search for? ',
              hintStyle: const TextStyle(
                color: Color(0xFF06004F),
                fontWeight: FontWeight.w300,
                fontSize: 12,
                
              ),
              prefixIcon: const Icon(Icons.search,
                color: Color(0xFF004182),
                size: 24,
                
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50,
              
                ),
                
                borderSide: const BorderSide(
                  color: Color(0xFF004182),
                ),
        
                
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: Color(0xFF004182),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: Color(0xFF004182),
                ),
              ),
            ),
          ),
        ),
         const Icon( Icons.shopping_cart_outlined,
          color: Color(0xFF004182),
          size: 24,),

      ],
    );
  }
}