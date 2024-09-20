import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
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