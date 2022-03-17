import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './product_item.dart';
import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {
  const ProductsGrid(bool showOnlyFavorites, {Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final ProductsGrid=Provider.of<Products>(context);
    final productsw = ProductsGrid.items;
    return GridView
        .builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
      (crossAxisCount: 2,childAspectRatio: 2/3,mainAxisSpacing: 12,
        crossAxisSpacing: 13),
      itemBuilder: (ctx,i)=> ChangeNotifierProvider.value(
        value: productsw[i],
        // create: (c) => productsw[i],
        child: ProductItem(

        // productsw[i].imagesUrl,
        //     productsw[i].id,productsw[i].title
        ),
      ),
      padding: const EdgeInsets.all(12),itemCount: productsw.length,);
  }
}
