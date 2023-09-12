class data {
  late final String image;
  late final String name;
  late final String rate;
  late final String price;

  data(
      {required this.image,
      required this.name,
      required this.rate,
      required this.price});
}

List<data> getadata = [
  data(
      image: 'images/cf.png', name: 'cappuccino', rate: '4.7', price: '\$5.12'),
  data(
      image: 'images/cf.png', name: 'cappuccino', rate: '4.7', price: '\$4.32'),
];

List<data> getaanotherdata = [
  data(image: 'images/1b.png', name: 'Cold Brew', rate: '4.7', price: '\$7.12'),
  data(
      image: 'images/3bb.png', name: 'Cold Brew', rate: '4.7', price: '\$5.32'),
];

List<data> getotherdata = [
  data(
      image: 'images/es2.png', name: 'Espresso', rate: '4.7', price: '\$10.12'),
  data(
      image: 'images/ess.png', name: 'Espresso', rate: '4.7', price: '\$12.32'),
];

List<data> geta = [
  data(
      image: 'images/11.png', name: 'cappuccino', rate: '4.7', price: '\$5.12'),
  data(
      image: 'images/es2.png', name: 'Espresso', rate: '4.7', price: '\$10.12'),
];
