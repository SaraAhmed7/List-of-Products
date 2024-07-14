import 'package:event_task/Components/custom_search_bar.dart';
import 'package:event_task/Components/item.dart';
import 'package:event_task/Fetch_API/fetch_product.dart';
import 'package:event_task/Fetch_API/product_model.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  late Future<List<Product>> futureProducts;

  @override
  void initState() {
    super.initState();
    futureProducts = fetchProducts();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: Image.asset('assets/images/route.png', width: 50, height: 50),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Image.asset('assets/images/route.png'),
            const SizedBox(height: 5),
            const CustomSearchBar(),
            Expanded(
              child: FutureBuilder<List<Product>>(
                future: futureProducts,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.8,
                        mainAxisSpacing: 10.0, 
                        crossAxisSpacing: 10.0,
                      ),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        final product = snapshot.data![index];
                        return Item(
                          imagePath: product.thumbnail,
                          title: product.title,
                          description: product.description,
                          rating: product.rating,
                          discountPercentage: product.discountPercentage,
                          price: product.price,
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text("${snapshot.error}"));
                  }
                  return const Center(child: CircularProgressIndicator(
                    color: Color(0xFF004182),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
