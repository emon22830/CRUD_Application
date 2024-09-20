import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
             itemCount: 20,
            itemBuilder: (context, index){
              return ProductItem();
        },
          separatorBuilder: (BuildContext context, int index) {
           return SizedBox(height: 4,)  ;
        },
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      title: Text('Product name'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product : E2MAD'),
          Text('Price : \$120'),
          Text('Quantity : 2'),
          Text('Total Price : 240'),
          Divider(),
          ButtonBar(
            children: [
              TextButton.icon(
                onPressed: () {},
                label:const Text('Edit'),
                icon: Icon(Icons.edit),

              ),
              TextButton.icon(
                onPressed: () {},
                label:const Text('Delete'),
                icon: Icon(Icons.delete, color: Colors.red,),

              ),
            ],
          )
        ],
      ),
    );
  }
}
