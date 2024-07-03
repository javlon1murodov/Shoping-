import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/componets/grocery_item.dart';
import 'package:shop/model/cart_model.dart';
import 'package:shop/page/cart_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context){
          return  const CartPage();
        })),
        backgroundColor: Colors.blue,
        child:  const Icon(Icons.shopping_bag,
        color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 48,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text("Good morning"),
            ),
            const SizedBox(
              height: 4,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Let's order fresh items for you",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Fresh Items",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
                child: Consumer<CartModel>(builder: (context, value, child){
                  return GridView.builder(
                    itemCount: value.shopItems.length,
                      padding: const EdgeInsets.all(12),
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                        childAspectRatio: 1/1.3,
                  ) ,
                      itemBuilder: (context, index){
                    return GroceryItem(
                        itemName: value.shopItems[index][0],
                        itemPrice:value.shopItems[index][1],
                        imagePath: value.shopItems[index][2],
                        color: value.shopItems[index][3],
                      onPressed:(){
                          Provider.of<CartModel>(context, listen: false).addItemToCart(index);
                      },
                    );
                      }
                      );
                }
                ),
            )
          ],
        ),
      ),
    );
  }
}
