import 'package:flutter/material.dart';

import '../../FavoriteScreen/controller/favorite_controller.dart';

class DeatilScreen extends StatelessWidget {
  const DeatilScreen({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(230, 255, 255, 255),
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: IconButton(
                  iconSize: 25,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SizedBox(
            height: 250,
            child: Center(
              child: Image(
                  image:
                      AssetImage(FavoriteController.favList[index].itemImage)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 280),
            child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Text(
                          FavoriteController.favList[index].itemName,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        )),
                        Expanded(
                            child: Align(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            "\$${FavoriteController.favList[index].itemPrize}",
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "A henly shirt is a colorsless shirts,niibnjooowrgbowrgorgobgnpsfbpbfbvibisfbvsibvisbvihsfvibfivbdifbviffvbisfbvisbfihbnbfpnspfbvpsnfvbdpfsian;ehv;oadbfvj;dfonkjbijdbisdbabdvbiasdvbabdvoadnvoabsdab",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Colors"),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.blueAccent,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.deepOrange,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.lightGreen,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox())
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                          height: 60,
                          width: 500,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Add to cart")),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
