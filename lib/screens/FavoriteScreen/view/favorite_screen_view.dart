import 'package:candlab_test/screens/FavoriteScreen/controller/favorite_controller.dart';
import 'package:candlab_test/screens/details_screen/view/details_screen.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Favorite",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemCount: 20,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DeatilScreen(
                          index: index,
                        )),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: 110,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: FavoriteController.favList[index].color),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Image(
                              image: AssetImage(
                                  FavoriteController.favList[index].itemImage)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.white,
                          child: IconButton(
                              iconSize: 15,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )),
                        ),
                      )
                    ],
                  ),
                  Text(
                    FavoriteController.favList[index].itemName,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Text("\$${FavoriteController.favList[index].itemPrize}",
                      style: const TextStyle(fontWeight: FontWeight.w800)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
