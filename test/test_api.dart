import 'package:dio/dio.dart';

// String baseUrl = "https://9code.id/{nama-user}/api/{endpoint}";
// String baseUrl = "https://9code.id/demo/api/products";
String baseUrl = "https://9code.id/demo/api";

void main() async {
  // await createProduct();
  // await getProduct();
  // await updateProduct();
  await deleteProduct();
}

Future getProduct() async {
  var response = await Dio().get(
    "$baseUrl/products",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
  );
  Map obj = response.data;
  print(obj["data"]);
}

Future createProduct() async {
  await Dio().post(
    "$baseUrl/products",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
    data: {
      "product_name": "GG FILTER 12",
      "price": 1000,
      "category": "Rokok",
    },
  );
}

Future updateProduct() async {
  await Dio().put(
    "$baseUrl/products/1",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
    data: {
      "product_name": "SK KRETEK 12",
      "price": 1000,
      "category": "Rokok",
    },
  );
}

Future deleteProduct() async {
  await Dio().delete(
    "$baseUrl/products/2",
    options: Options(
      headers: {
        "Content-Type": "application/json",
      },
    ),
  );
}
