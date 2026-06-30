import 'package:flutter/widgets.dart';
import 'package:sneakershopapp/models/shoe.dart';

class Cart extends ChangeNotifier {

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '2900',
        imagePath: 'lib/images/zoomfreakpng.png',
        description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Jordans',
      price: '3800',
      imagePath: 'lib/images/airjordan.png',
      description: 'You\'ve got the hopes and the speed-lace up in shoes.',
    ),
    Shoe(
      name: 'KD Treys',
      price: '2500',
      imagePath: 'lib/images/kdtries.png',
      description: 'A secure midfoot strap is suited for scoring binges and defensive stands.',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '1900',
      imagePath: 'lib/images/kyrie6.png',
      description: 'Bouncy cushioning is paired with soft yet supportive foam for rest.',
    ),
    Shoe(
      name: 'Zoom Freak 4',
      price: '2750',
      imagePath: 'lib/images/zoomfreak2.png',
      description: 'The Zoom Freak 4 has some pretty supportive features and as usual.',
    ),

  ];

  // lost of items in user cart
List<Shoe> userCart = [];

  // get list of shoes for sale
List<Shoe> getShoeList() {
  return shoeShop;
}

  // get cart
List<Shoe> getUserCart() {
  return userCart;
}

  // add items to cart
void addItemToCart(Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();
}

  // remove item from cart
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();
}
}