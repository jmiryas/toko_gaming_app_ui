class ProductModel {
  final String name;
  final String category;
  final int rating;
  final double price;
  final String image;

  const ProductModel({
    required this.name,
    required this.category,
    required this.rating,
    required this.price,
    required this.image,
  });

  static List<String> productCategories = [
    "All",
    "Headset",
    "Webcam",
    "Keyboard",
    "Mouse",
    "Chair"
  ];

  static List<ProductModel> products = [
    const ProductModel(
        name: "Rexus ALVA II",
        category: "Webcam",
        rating: 4,
        price: 50000,
        image: "images/Rexus-ALVA-II.png"),
    const ProductModel(
        name: "Rexus DAIVA",
        category: "Keyboard",
        rating: 4,
        price: 250000,
        image: "images/Rexus-DAIVA.jpg"),
    const ProductModel(
        name: "Rexus Gaming Chair 101",
        category: "Chair",
        rating: 4,
        price: 1250000,
        image: "images/Rexus-Gaming-Chair-101.jpg"),
    const ProductModel(
        name: "Rexus Gaming Chair 103",
        category: "Chair",
        rating: 4,
        price: 1350000,
        image: "images/Rexus-Gaming-Chair-103.jpg"),
    const ProductModel(
        name: "Rexus Gaming Chair DarkThrones",
        category: "Chair",
        rating: 4,
        price: 1450000,
        image: "images/Rexus-Gaming-Chair-DarkThrones.jpg"),
    const ProductModel(
        name: "Rexus Gaming Chair R60",
        category: "Chair",
        rating: 4,
        price: 1150000,
        image: "images/Rexus-Gaming-Chair-R60.jpg"),
    const ProductModel(
        name: "Rexus Gaming Chair RGC 111",
        category: "Chair",
        rating: 4,
        price: 1250000,
        image: "images/Rexus-Gaming-Chair-RGC-111.jpg"),
    const ProductModel(
        name: "Rexus Legionare MX3",
        category: "Keyboard",
        rating: 4,
        price: 250000,
        image: "images/Rexus-Legionare-MX3.jpg"),
    const ProductModel(
        name: "Rexus Legionare MX5",
        category: "Keyboard",
        rating: 4,
        price: 230000,
        image: "images/Rexus-Legionare-MX5.jpg"),
    const ProductModel(
        name: "Rexus Legionare MX9",
        category: "Keyboard",
        rating: 4,
        price: 230000,
        image: "images/Rexus-Legionare-MX9.png"),
    const ProductModel(
        name: "Rexus Legionare MX20",
        category: "Keyboard",
        rating: 4,
        price: 260000,
        image: "images/Rexus-Legionare-MX20.jpg"),
    const ProductModel(
        name: "Rexus S5 Aviator",
        category: "Mouse",
        rating: 4,
        price: 160000,
        image: "images/Rexus-S5-Aviator.jpg"),
    const ProductModel(
        name: "Rexus SW RX01",
        category: "Webcam",
        rating: 4,
        price: 360000,
        image: "images/Rexus-SW-RX01.jpeg"),
    const ProductModel(
        name: "Rexus Thundervox HX9",
        category: "Headset",
        rating: 4,
        price: 350000,
        image: "images/Rexus-Thundervox-HX9.jpg"),
    const ProductModel(
        name: "Rexus Thundervox HX20",
        category: "Headset",
        rating: 4,
        price: 370000,
        image: "images/Rexus-Thundervox-HX20.jpg"),
    const ProductModel(
        name: "Rexus Thundervox HX25",
        category: "Headset",
        rating: 4,
        price: 3650000,
        image: "images/Rexus-Thundervox-HX25.jpg"),
    const ProductModel(
        name: "Rexus Thundervox HX28",
        category: "Headset",
        rating: 4,
        price: 3750000,
        image: "images/Rexus-Thundervox-HX28.png"),
    const ProductModel(
        name: "Rexus Vonix F80",
        category: "Headset",
        rating: 4,
        price: 3450000,
        image: "images/Rexus-Vonix-F80.png"),
    const ProductModel(
        name: "Rexus Webcam ALVA",
        category: "Webcam",
        rating: 4,
        price: 150000,
        image: "images/Rexus-Webcam-ALVA.png"),
    const ProductModel(
        name: "Rexus Xierra",
        category: "Mouse",
        rating: 4,
        price: 120000,
        image: "images/Rexus-Xierra.jpg"),
    const ProductModel(
        name: "Rexus Xierra G11",
        category: "Mouse",
        rating: 4,
        price: 130000,
        image: "images/Rexus-Xierra-G11.png"),
    const ProductModel(
        name: "Rexus Xierra X15",
        category: "Mouse",
        rating: 4,
        price: 130000,
        image: "images/Rexus-Xierra-X15.jpg"),
    const ProductModel(
        name: "Rexus Xierra X16",
        category: "Mouse",
        rating: 4,
        price: 135000,
        image: "images/Rexus-Xierra-X16.png"),
  ];
}
