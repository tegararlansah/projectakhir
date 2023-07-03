import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts_flutter2/components/drink_tile.dart';
import 'package:uts_flutter2/models/drink.dart';
import 'package:uts_flutter2/models/shop.dart';
import 'package:uts_flutter2/pages/order_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // order page
  void goToOrderPage(Drink drink) {
    // navigate page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPage(
          drink: drink,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                "Bubble Tea Shop",
                style: TextStyle(fontSize: 20),
              ),

              // list drink
              Expanded(
                child: ListView.builder(
                    itemCount: value.shop.length,
                    itemBuilder: (context, index) {
                      // get individual drink
                      Drink individualDrink = value.shop[index];

                      // return drink
                      return DrinkTile(
                        drink: individualDrink,
                        onTap: () => goToOrderPage(individualDrink),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
