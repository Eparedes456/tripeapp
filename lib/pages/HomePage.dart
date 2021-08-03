import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    destinos(String url, String nombre,String ciudad){
      return Padding(
                        padding:  EdgeInsets.only(left: 10),
                        child: Stack(
                          children: [

                          Container(
                          height: MediaQuery.of(context).size.height * 0.27,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage(url),
                              fit: BoxFit.cover
                            ),
                            
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  nombre,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(ciudad,style: TextStyle(color: Colors.white),),
                                SizedBox(height: 20,)
                              ],
                            ),
                          ),
                        ),

                        /*Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: 200,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                               
                                Colors.black38,
                                Colors.black45
                              ]
                            )
                          ),
                        )*/

                          ],
                        )
                        
                      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12,),
              SafeArea(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  //color: Colors.blue,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.list,size: 30,),
                        Container(
                          //color: Colors.black,
                          width: MediaQuery.of(context).size.width* 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Buenos días',style: TextStyle(fontWeight: FontWeight.bold),),
                                  SizedBox(height: 5,),
                                  Text('Juan Perez',style: TextStyle(color: Colors.grey),)
                                ],
                              ),
                              SizedBox(width: 20,),
                              CircleAvatar(
                                backgroundImage: NetworkImage('https://img.freepik.com/foto-gratis/retrato-joven-asiatico-mirando-confiado-tomando-selfie-mientras-pie-al-aire-libre-calle_58466-11951.jpg?size=626&ext=jpg&ga=GA1.2.2080206885.1627516800'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              
              Padding(
                padding:  EdgeInsets.only(left: 10,right: 10),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 1,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 10,right: 20),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: Colors.grey,),
                          SizedBox(width: 5,),
                          Expanded(
                            child: TextField(
                              
                              decoration: InputDecoration(
                                hintText: 'Busca tus destinos favoritos',
                                border: InputBorder.none
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Icon(Icons.filter_list,color: Colors.blueAccent,)

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                //color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          
                          child: Card(
                            color:  Color.fromRGBO(41, 194, 194, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            elevation: 2,
                            child: Center(
                              child: Icon(Icons.home,color: Colors.white,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Hotel'),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Card(
                            elevation: 2,
                            child: Center(
                              child: Icon(Icons.flight,color: Colors.black54,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Vuelos'),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Card(
                            elevation: 2,
                            child: Center(
                              child: Icon(Icons.pin_drop,color: Colors.black54,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Tour'),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          child: Card(
                            elevation: 2,
                            child: Center(
                              child: Icon(Icons.home,color: Colors.black54,),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text('Todos'),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height:20,),

              Padding(
                padding:  EdgeInsets.only(left: 20,right: 20),
                child: Text(
                  'Descubre',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height:20,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  //color: Colors.black54,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [

                      destinos(
                        'https://turismoi.pe/uploads/photo/version2/photo_file/40688/optimized_reui.jpg', 
                        'Cataratas de Ahuashiyacu',
                        'Tarapoto'
                      ),

                      destinos(
                        'https://sumaqllatravelperu.com/wp-content/uploads/2021/07/LAGUNA-AZUL-2.jpg', 
                        'Laguna Azul',
                        'Sauce'
                      ),

                      destinos(
                        'https://www.avis.com.pe/blog/wp-content/uploads/2019/04/RIO-TIOYACU-EN-RIOJA-San-Martin-1.jpg', 
                        'Tioyacu',
                        'Rioja'
                      ),

                      destinos(
                        'https://www.raptravelperu.com/wp-content/uploads/moyobamba.jpg', 
                        'Plaza de Armas',
                        'Moyobamba'
                      )
                    ],
                  )
                  
                  /*ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,i){*/
                      /*return Padding(
                        padding:  EdgeInsets.only(left: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: NetworkImage('https://turismoalperu.com/wp-content/uploads/2019/11/Morro-de-Calzada.jpg'),
                              fit: BoxFit.cover
                            )
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Destino $i',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 18
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text('Ciudad',style: TextStyle(color: Colors.white),),
                                SizedBox(height: 20,)
                              ],
                            ),
                          ),
                        ),
                      );*/
                    //}
                  ),
                ),
              
              //SizedBox(height:20,),
              Padding(
                padding:  EdgeInsets.only(left: 20,right: 20),
                child: Text(
                  'Top Hoteles',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.only(left: 10,),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  //color: Colors.black54,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context,i){
                      return Padding(
                        padding:  EdgeInsets.only(left: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.7,  //* 0.08,
                          width: MediaQuery.of(context).size.width / 1.2,
                          /*decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            
                          ),*/
                          child: Card(
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 10,right: 10),
                              
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(15)
                                      ),
                                    ),
                                    Expanded(
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 8,top: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Rustica Hotelsdsdasdasdasdasdasdasda'),
                                        
                                        Text('ciudad del hotel'),
                                        
                                        Text('Calificación'),
  
                                        Padding(
                                          padding: const EdgeInsets.only(top: 12,right: 10),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            height: 45,
                                            child: Center(
                                              child: Text('¡Reserva ahora!'),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),


                                  ],
                                ),
                              
                            ),
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ),

              /*Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: double.infinity,
                  color: Colors.black54,
                  child: ListView.builder(
                  
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context ,i){
                      return Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.15,
                        color: Colors.white,
                        
                      );
                      /*Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)
                          ),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              
                              children: [
                                Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15)
                                  ),
                                ),

                                Expanded(
                                  child: Padding(
                                    padding:  EdgeInsets.only(left: 20,right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Nombre del hotel'),
                                        
                                        Text('ciudad del hotel'),
                                        
                                        Row(
                                          
                                          
                                          children: [
                                            Text('Calificación'),
                                           
                                          ],
                                        ),
                                      
                                        
                                        Padding(
                                          padding: const EdgeInsets.only(top: 12),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.circular(20)
                                            ),
                                            height: 45,
                                            child: Center(
                                              child: Text('¡Reserva ahora!'),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                      );*/
                    }
                  ),
                ),
              )*/


              
            ],
          ),
        ),
      ),
    );
  }
}

