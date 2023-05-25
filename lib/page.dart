import 'package:flutter/material.dart';

class LandPage extends StatefulWidget {
  const LandPage({super.key});

  @override
  State<LandPage> createState() => _LandPageState();
}

class _LandPageState extends State<LandPage> {
  bool isHovered = false;
  int current = 0;
  String? dropDownValue;
  Image avatar = Image.asset('assets/avatar.png');
  Image adidas = Image.asset(
    'assets/adidas.png',
    fit: BoxFit.fill,
  );
  Image shoe = Image.asset(
    'assets/shoe.png',
    fit: BoxFit.fill,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFD9D9D9),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(alignment: AlignmentDirectional.bottomCenter, children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      color: const Color(0xFFD78484),
                    ),
                    Container(
                      color: const Color(0xFFFFFFFF),
                      height: 65,
                    )
                  ],
                ),
                Positioned(
                  top: 35,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width * .50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 6,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        const Icon(Icons.search),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * .20,
                              height: 70,
                              child: const Center(
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search for a product'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: DropdownButton<String>(
                                isExpanded: true,
                                focusColor: Colors.black,
                                dropdownColor: Colors.white,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Mont-Regular',
                                  fontSize: 14,
                                ),
                                borderRadius: BorderRadius.circular(10),
                                hint: const Text(
                                  'Category',
                                  style: TextStyle(color: Colors.black),
                                ),
                                // icon: SvgPicture.asset(Assets.dropdown),
                                underline: Container(color: Colors.black),
                                value: dropDownValue,
                                onChanged: (value) {
                                  dropDownValue = '';
                                  setState(() {
                                    dropDownValue = value;
                                  });
                                },
                                items: [
                                  "Category",
                                  "Name",
                                ]
                                    .map<DropdownMenuItem<String>>(
                                        (String value) =>
                                            DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                )))
                                    .toList(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              Container(
                width: double.infinity,
                color: const Color(0xFFFFFFFF),
                child: Column(
                  children: [
                    const Text(
                      'My Products',
                      style: TextStyle(fontFamily: 'Inter-B', fontSize: 35),
                    ),
                    LayoutBuilder(builder: (context, con) {
                      return con.maxWidth > 850
                          ? Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      height: 40,
                                      width: 160,
                                      child: const Center(
                                          child: Text(
                                        'Converse Shoes',
                                        style: TextStyle(
                                            fontFamily: 'Inter-R',
                                            fontSize: 12),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      height: 40,
                                      width: 160,
                                      child: const Center(
                                          child: Text(
                                        'Converse Shoes',
                                        style: TextStyle(
                                            fontFamily: 'Inter-R',
                                            fontSize: 12),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      height: 40,
                                      width: 160,
                                      child: const Center(
                                          child: Text(
                                        'Converse Shoes',
                                        style: TextStyle(
                                            fontFamily: 'Inter-R',
                                            fontSize: 12),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      height: 40,
                                      width: 160,
                                      child: const Center(
                                          child: Text(
                                        'Converse Shoes',
                                        style: TextStyle(
                                            fontFamily: 'Inter-R',
                                            fontSize: 12),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      height: 40,
                                      width: 160,
                                      child: const Center(
                                          child: Text(
                                        'Converse Shoes',
                                        style: TextStyle(
                                            fontFamily: 'Inter-R',
                                            fontSize: 12),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border:
                                              Border.all(color: Colors.black)),
                                      height: 40,
                                      width: 160,
                                      child: const Center(
                                          child: Text(
                                        'Converse Shoes',
                                        style: TextStyle(
                                            fontFamily: 'Inter-R',
                                            fontSize: 12),
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                ],
                              ),
                            )
                          : Container(
                              height: 100,
                              width: double.infinity,
                              color: const Color(0xFFFFFFFF),
                            );
                    }),
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * .1,
                  right: MediaQuery.of(context).size.width * .1,
                ),
                child: Column(children: [
                  LayoutBuilder(
                    builder: (context, con) {
                      return con.maxWidth > 850
                          ? Container(
                              width: double.infinity,
                              height: 120,
                              color: const Color(0xFFFFFFFF),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundImage: avatar.image,
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    const Text(
                                      'Adidda Sport wear',
                                      style: TextStyle(
                                          fontFamily: 'Inter-B', fontSize: 20),
                                    ),
                                    const Expanded(
                                      child: SizedBox(
                                        width: 30,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 55,
                                      width: 55,
                                      child: adidas,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 55,
                                      width: 55,
                                      child: adidas,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 55,
                                      width: 55,
                                      child: adidas,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 55,
                                      width: 55,
                                      child: adidas,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      height: 55,
                                      width: 55,
                                      child: adidas,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFFFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          height: 65,
                                          width: 65,
                                          child: adidas,
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.black.withOpacity(0.70),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          height: 65,
                                          width: 65,
                                          child: const Center(
                                              child: Text(
                                            '10+',
                                            style: TextStyle(
                                              fontFamily: 'Inter-B',
                                              fontSize: 20,
                                              color: Color(0xFFFFFFFF),
                                            ),
                                          )),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                  ]),
                            )
                          : const SizedBox();
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  LayoutBuilder(builder: (context, con) {
                    return Column(
                      children: [
                        GridView.builder(
                          itemCount: 8,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: con.maxWidth > 850
                                      ? 4
                                      : con.maxWidth > 500
                                          ? 3
                                          : 2,
                                  crossAxisSpacing: 30,
                                  mainAxisSpacing: 30,
                                  mainAxisExtent: 295),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  current = index;
                                  isHovered = !isHovered;
                                });
                              },
                              child: isHovered && current == index
                                  ? Container(
                                      // height: 400,
                                      // width: 340,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 180,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: shoe,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Text(
                                              'Adidas Converse',
                                              style: TextStyle(
                                                  fontFamily: 'Inter-B',
                                                  fontSize: 15),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(5.0),
                                            child: Text(
                                              "\$1200",
                                              style: TextStyle(
                                                  fontFamily: 'Inter-B',
                                                  fontSize: 12),
                                            ),
                                          ),
                                          Center(
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all(
                                                          const Color(
                                                              0xFFD78484)),
                                                ),
                                                onPressed: () {},
                                                child: const Text(
                                                  'Add to cart',
                                                  style: TextStyle(
                                                      fontFamily: 'Inter-B',
                                                      fontSize: 12),
                                                )),
                                          )
                                        ],
                                      ))
                                  : Container(
                                      // height: 300,
                                      // width: 260,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            height: 175,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFFFFFFF),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: shoe,
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.all(15.0),
                                            child: Text(
                                              'Adidas Converse',
                                              style: TextStyle(
                                                  fontFamily: 'Inter-B',
                                                  fontSize: 15),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "\$1200",
                                              style: TextStyle(
                                                  fontFamily: 'Inter-B',
                                                  fontSize: 12),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          )
                                        ],
                                      )),
                            );
                          },
                        ),
                      ],
                    );
                  }),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
