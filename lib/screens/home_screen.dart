import 'package:flutter/material.dart';
import 'package:online_shopping_portal/screens/item.dart';
import 'package:online_shopping_portal/screens/iten_list.dart';

class HomeScreen extends StatelessWidget {
  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          new IconButton(
            icon: new Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: null,
          ),
        ],
        //title: Text('Neelu'),
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/girl.jpg'),
              minRadius: 28,
            ),
            //Image.asset('assets/images/girl.jpg',fit: BoxFit.contain,height: 32,),
            Container(padding: const EdgeInsets.all(8.0), child: Text('Neelu'))
          ],
        ),
        backgroundColor: Colors.purple,
      ),
      body: _gridView(),
    );
  }

  Widget _gridView() {
    return GridView.count(
      crossAxisCount: 2,
      padding: EdgeInsets.all(4.0),
      childAspectRatio: 8.0 / 9.0,
      children: itemList
          .map(
            (Item) => ItemList(item: Item),
          )
          .toList(),
    );
  }

  List<Item> _itemList() {
    return [
      Item(
        id: 0,
        name: 'Trendy Fabulous Men Shirts',
        category: '₹100 OFF|1st Order Discount Applied',
        desc: 'Fabric: Cotton, Sleeve Length Sleeves'
            'Pattern: Printed ,Multipack:1 '
            'Sizes XL(Chest Size :44 in,Length Size:30.5 in) '
            'L(Chest Size :42 in,Length Size:30 in).'
            '\nM(Chest Size :40 in,Length Size:29 in)'
            'Pretty Designer Men Shirt'
            'Price inclusive of GST '
            'free Shipping.',
        rating: 8.7,
        directors: 'Sold By: VSON CREATION',
        releaseDate: 'MRP             ',
        releaseDateDesc: 'Free Delivery',
        runtime: '₹526',
        bannerUrl: 'assets/images/shirts.png',
        imageUrl: 'assets/images/shirts.png',
        trailerImg1: 'assets/images/shirts.png',
        trailerImg2: 'assets/images/shirts.png',
        trailerImg3: 'assets/images/shirts.png',
      ),
      Item(
        id: 1,
        name: 'Transformers The Last Knight',
        category: '₹50 OFF|1st Order Discount Applied',
        desc: 'Fabric: Polyester Cotton, Sleeve'
            'Sleeve: Sleeves are not included '
            'Sizes S(Chest Size :36 in,Length Size:40 in) '
            'L(Chest Size :40 in,Length Size:40 in).'
            '\nM(Chest Size :42 in,Length Size:40 in)'
            'It has 1 Piece of Women dress'
            'Price inclusive of GST '
            'Pattern: Solid.',
        rating: 5.2,
        directors: 'Sold By: SPAIN STYLE',
        releaseDate: 'MRP             ',
        releaseDateDesc: 'Free Delivery',
        runtime: '₹845',
        bannerUrl: 'assets/images/blue_dress.png',
        imageUrl: 'assets/images/blue_dress.png',
        trailerImg1: 'assets/images/blue_dress.png',
        trailerImg2: 'assets/images/blue_dress.png',
        trailerImg3: 'assets/images/blue_dress.png',
      ),
      Item(
        id: 2,
        name: 'Pacific Rim Uprising',
        category: '₹100 OFF|1st Order Discount Applied',
        desc: 'Fabric: Cotton, Acrylic woolen Sweater'
            'Sleeves: Length: ,Long Sleeves:1 '
            'Pattern: Self-Design'
            'Multi pack: 1'
            'Sizes XL(Chest Size :44 in,Length Size:30.5 in) '
            'L(Chest Size :42 in,Length Size:30 in).'
            '\nM(Chest Size :40 in,Length Size:29 in)'
            'Pretty Designer Men Acrylic woolen Sweater'
            'Price inclusive of GST '
            'free Shipping.',
        rating: 5.7,
        directors: 'Sold By: DREAM MAKERS',
        releaseDate: 'MRP             ',
        releaseDateDesc: 'Free Delivery',
        runtime: '₹736',
        bannerUrl: 'assets/images/sweter.png',
        imageUrl: 'assets/images/sweter.png',
        trailerImg1: 'assets/images/sweter.png',
        trailerImg2: 'assets/images/sweter.png',
        trailerImg3: 'assets/images/sweter.png',
      ),
      Item(
        id: 3,
        name: 'Thor Ragnarok',
        category: '₹30 OFF|1st Order Discount Applied',
        desc: 'Fabric: Cotton, Sleeve Length Sleeves'
            'Pattern: Printed ,Multipack:1 '
            'Sizes XL(Chest Size :44 in,Length Size:30.5 in) '
            'L(Chest Size :42 in,Length Size:30 in).'
            '\nM(Chest Size :40 in,Length Size:29 in)'
            'Pretty Designer Men T- Shirt'
            'Price inclusive of GST '
            'free Shipping.',
        rating: 7.9,
        directors: 'Sold By: S-LINE',
        releaseDate: 'MRP             ',
        releaseDateDesc: 'Free Delivery',
        runtime: '₹999',
        bannerUrl: 'assets/images/five_shirt.png',
        imageUrl: 'assets/images/five_shirt.png',
        trailerImg1: 'assets/images/five_shirt.png',
        trailerImg2: 'assets/images/five_shirt.png',
        trailerImg3: 'assets/images/five_shirt.png',
      ),
      Item(
        id: 4,
        name: 'Thor Ragnarok',
        category: '₹10 OFF|1st Order Discount Applied',
        desc: 'Fabric: Polyester Cotton, Sleeve'
            'Sleeve: Sleeves are not included '
            'Sizes S(Chest Size :36 in,Length Size:40 in) '
            'L(Chest Size :40 in,Length Size:40 in).'
            '\nM(Chest Size :42 in,Length Size:40 in)'
            'It has 1 Piece of Women dress'
            'Price inclusive of GST '
            'Pattern: Solid.',
        rating: 7.9,
        directors: 'Sold By: S-LINE',
        releaseDate: 'MRP             ',
        releaseDateDesc: 'Free Delivery',
        runtime: '₹1025',
        bannerUrl: 'assets/images/scirt_top.png',
        imageUrl: 'assets/images/scirt_top.png',
        trailerImg1: 'assets/images/scirt_top.png',
        trailerImg2: 'assets/images/scirt_top.png',
        trailerImg3: 'assets/images/scirt_top.png',
      ),
      Item(
        id: 5,
        name: 'Thor Ragnarok',
        category: '₹40 OFF|1st Order Discount Applied',
        desc: 'Fabric: Cotton, Sleeve Length Sleeves'
            'Pattern: Printed ,Multipack:1 '
            'Sizes XL(Chest Size :30 in,Length Size:25.5 in) '
            'L(Chest Size :32 in,Length Size:25 in).'
            '\nM(Chest Size :34 in,Length Size:25 in)'
            'Pretty Designer Kids Frock'
            'Price inclusive of GST '
            'free Shipping.',
        rating: 7.9,
        directors: 'Sold By: S-LINE',
        releaseDate: 'MRP             ',
        releaseDateDesc: 'Free Delivery',
        runtime: '₹1035',
        bannerUrl: 'assets/images/baby_top.png',
        imageUrl: 'assets/images/baby_top.png',
        trailerImg1: 'assets/images/baby_top.png',
        trailerImg2: 'assets/images/baby_top.png',
        trailerImg3: 'assets/images/baby_top.png',
      ),
    ];
  }
}
