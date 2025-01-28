import 'package:car_app/features/auth/home/data_provider.dart';
import 'package:car_app/features/auth/home/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final List<Product> allProducts = [
  Product(
    name: 'Milk',
    image:
        'https://cdn.theatlantic.com/thumbor/xqIzlSVQZog0Wdv3uFzVQgZA_90=/249x0:1749x1125/1200x900/media/img/mt/2024/10/Atlantic_Milk_2000x1125/original.jpg',
    price: 80,
  ),
  Product(
    name: 'Butter',
    image:
        'https://www.fitterfly.com/blog/wp-content/uploads/2024/09/Is-Butter-Good-for-Weight-Loss.webp',
    price: 80,
  ),
  Product(
    name: 'Cheese',
    image:
        'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/healthiest-cheese-1296x728-swiss.jpg?w=1155&h=1528',
    price: 250,
  ),
  Product(
    name: 'Water',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRsRCR19urw4dJsgmK1lbwhzHSNlr6nZCwNw&s',
    price: 32,
  ),
  Product(
    name: 'Bread',
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjgv3vusjlcfBRxJ389pTd5nTU9GWB9BrDsg&s',
    price: 25,
  ),
];
    
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade100,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: InkWell( onTap: (){
                    context.
                    read<DataProvider>().
                    addProduct(newProduct: allProducts[index],);
                  },
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.network(
                            allProducts[index].image,
                            fit: BoxFit.cover,
                        
                          ),
                        ),
                      ),
                      title: Text(allProducts[index].name),
                      subtitle: Text('${allProducts[index].price} som'),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 20),
                itemCount: allProducts.length,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push( context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(),
      ),
    );
  },

              child: const Text('Go'),
            ),
          ],
        ),
      ),
    );
  }
}



