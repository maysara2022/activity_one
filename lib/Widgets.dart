import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetItems extends StatefulWidget {
  final List<String> imagesList;

  const WidgetItems({super.key, required this.imagesList});

  @override
  State<WidgetItems> createState() => _WidgetItemsState();
}

class _WidgetItemsState extends State<WidgetItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        excludeHeaderSemantics: true,
        leading: Icon(Icons.arrow_back_ios),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
              height: 500,
              width: double.infinity,
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2023/07/10/18/59/bird-8118926_1280.jpg')),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Amazon Bird ',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  'Birds are one of the most important species on our planet. Birds play a crucial role  the ecosystem and are responsible  pollinating plants, dispersing seeds, and controlling pests. They also provide us  food and feathers and are a source of inspiration and enjoyment',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(height: 10),
                Text(
                  'Amazon Bird ',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: EdgeInsetsDirectional.all(8),
                    itemBuilder: (c, i) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              child: Image(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(widget.imagesList[i])),
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              clipBehavior: Clip.antiAlias,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                            height: 10,
                          )
                        ],
                      );
                    },
                    itemCount: widget.imagesList.length ,
                  ),
                ),
                Row(
                  children: [
                    Text('More in Bali', style: TextStyle(color: Colors.green.shade800,fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(width: 5,),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.green.shade800)
                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
