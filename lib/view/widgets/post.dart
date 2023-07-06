import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
 final bool isIOS;
  const PostWidget({Key? key,required this.isIOS}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.zero,
          elevation: isIOS ? 0 : 8,
          child: Flexible(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://moto-occasion.moto-station.com/files/thumbs/items/vehicles/images/item/image_WINTEAM_1895169_5a7afb57c0c1d.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width - 16,
            height: 65,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          'Z1000',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text('25.000 DT',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 153, 170, 255)))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text('30-10-2022',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white70)),
                        Text('Msaken sousse',
                            style:
                                TextStyle(fontSize: 14, color: Colors.white70))
                      ],
                    ),
                  ]),
            ),
            decoration: BoxDecoration(
              borderRadius:const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              color: Colors.black.withOpacity(0.6),
            ),
          ),
        ),
      ],
    );
  }
}
