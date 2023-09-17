import 'package:flutter/material.dart';

import 'widget/textFieldwidget.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List itemsList = [
    {
      "photo":
          "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg",
      "caption": "Photo 0"
    },
    {
      "photo":
          "https://img.freepik.com/free-photo/stunning-square-portrait-adorable-cute-cat_181624-37290.jpg",
      "caption": "Photo 1"
    },
    {
      "photo":
          "https://images.rawpixel.com/image_png_social_portrait/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcHUyMzMxNjM2LWltYWdlLTAxLXJtNTAzXzMtbDBqOXFrNnEucG5n.png?s=ap5xES89ty-fUtnmSk81EJPqHoIIeTxNy7wU3KJHUbU",
      "caption": "Photo 2"
    },
    {
      "photo":
          "https://img.freepik.com/premium-psd/cat-with-blue-eyes-sits-white-transparent-background_540808-60.jpg?w=2000",
      "caption": "Photo 3"
    },
    {
      "photo":
          "https://hips.hearstapps.com/hmg-prod/images/beautiful-smooth-haired-red-cat-lies-on-the-sofa-royalty-free-image-1678488026.jpg?crop=0.668xw:1.00xh;0.119xw,0&resize=1200:*",
      "caption": "Photo 4"
    },
    {
      "photo":
          "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?cs=srgb&dl=pexels-pixabay-45201.jpg&fm=jpg",
      "caption": "Photo 5"
    },
    {
      "photo":
          "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg",
      "caption": "Photo 6"
    }
  ];
  void sankeBar(BuildContext context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Photo Gallery",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Text(
                  "Welcome to My photo Gallery!",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const TextFieldWidget(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                child: GridView.builder(
                    itemCount: itemsList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () =>
                            sankeBar(context, itemsList[index]["caption"]),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 2,
                                  child: Image.network(
                                    itemsList[index]["photo"],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Text(itemsList[index]["caption"]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView(
                  children: [
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg"),
                      ),
                      title: Text("Photo 1"),
                      subtitle: Text("Description for Photo 1"),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://img.freepik.com/free-photo/stunning-square-portrait-adorable-cute-cat_181624-37290.jpg"),
                      ),
                      title: Text("Photo 2"),
                      subtitle: Text("Description for Photo 2"),
                    ),
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?cs=srgb&dl=pexels-pixabay-45201.jpg&fm=jpg"),
                      ),
                      title: Text("Photo 3"),
                      subtitle: Text("Description for Photo 3"),
                    ),
                    GestureDetector(
                      onTap: () {
                        sankeBar(context, "Photos Uploaded Successfully!");
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.upload,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
