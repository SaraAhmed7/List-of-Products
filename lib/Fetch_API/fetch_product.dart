
  import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:event_task/Fetch_API/product_model.dart';

Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body)['products'];
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }