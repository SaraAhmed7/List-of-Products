

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
   Item({super.key, required this.imagePath, required this.title, required this.description,
   required this.rating, required this.discountPercentage, required this.price});
String imagePath;
String title;
String description;

double discountPercentage;
double price;
double rating;
// int priceAfter = (price - (price * discountPercentage/100).toInt()) as int;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 191,
          height: 237,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF004182),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(15),
          
          ),
          child: Column(
            children: [
                    Container(
                      child: Image.network(imagePath,
                      width: 191,
                      height: 90,
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      
                          Text(title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11,
                      ),
                      ),
        
                      Text(description, 
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 11,
                      ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                        Text('EGP ${price.toInt() - (price.toInt() * (discountPercentage.toInt()/100)).toInt()} ',
                        
                        style: const TextStyle(
                          
                          fontSize: 11,
                        ),
                        ),
                      
                        const SizedBox(width: 3),
                      
                        Text('${price} EGP',
                        
                        style: const TextStyle(
                          color: Color(0xFF004182),
                          decoration: TextDecoration.lineThrough, 
                          decorationColor: Color(0xFF004182),
                          decorationThickness: 2.0,
                          fontSize: 11,
                        ),
                        ),
                      
                        ],
                      ),
                                     
                       const SizedBox(height: 5),
        
                      Row(
                        children: [
                          Text('Reviwe (${rating.toStringAsFixed(1)})', 
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                          ),
        
                          const SizedBox(width: 5),
                        const Icon( Icons.star, color: Color.fromRGBO(240, 221, 46, 1), size: 15,),
                        ],
                      ),
                        ]
                      ),
                    )
                    
                    
        
            ],
          ),
        ),

        Positioned(
          top: 160,
          left:122 ,
          child: InkWell(
            onTap: (){},
            child: Container(
              width: 30,
              height: 30,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color:  Color(0xFF004182),
              ),
                    child: const Icon(Icons.add,
                    size: 24,
                    color: Colors.white,
                    
                    ),
                  
                    ),
          ),
        ),
        
         Positioned(
          bottom: 160,
          left:122 ,
          child: InkWell(
            onTap: (){},
            child: Container(
              width: 30,
              height: 30,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
               
              ),
                    child: const Icon(Icons.favorite_border_sharp,
                    size: 24,
                    color: Color(0xFF004182),
                    ),
                  
                    ),
          ),
        ),

      ],
    );
  }
}