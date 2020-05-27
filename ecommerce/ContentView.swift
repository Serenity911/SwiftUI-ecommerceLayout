//
//  ContentView.swift
//  ecommerce
//
//  Created by Serenity on 26/05/2020.
//  Copyright © 2020 Serenity. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var cart = [Product(name: "Apple", description: "red", imageName: "apple" ), Product(name: "Pear", description: "juicy", imageName: "pear" )]

    var categories = [Category(name: "Fruits", imageName:"Fruits", products: [Product(name: "banana", description: "yellow and sometimes nodemon", imageName: "banana"), Product(name: "Apple", description: "red", imageName: "apple" ), Product(name: "Pear", description: "juicy", imageName: "pear" )]),
                      Category(name: "Vegetables", imageName:"Vegetables", products:  [Product(name: "gem lettuce", description: "sweet and crispy", imageName: "lettuce"), Product(name: "tomato", description: "red", imageName: "tomato" ), Product(name: "pepper", description: "yummy", imageName: "pepper" )]),
                      Category(name: "Dairy", imageName:"Dairy", products: [Product(name: "milk", description: "delicious", imageName: "milk"), Product(name: "cheese", description: "mature", imageName: "cheese")]),
                      Category(name: "Bakery", imageName:"Bakery", products: [Product(name: "bread", description: "crunchy", imageName: "bread"), Product(name: "focaccia", description: "delicious", imageName: "focaccia" ), Product(name: "brioche", description: "sweet and buttery", imageName: "brioche" )])
    ]
    var fruits = [Product(name: "banana", description: "yellow and sometimes nodemon", imageName: "banana"), Product(name: "Apple", description: "red", imageName: "apple" ), Product(name: "Pear", description: "juicy", imageName: "pear" )]
    var body: some View {
        
        VStack
            {
                HStack{
                    Image("icon")
                        .resizable()
                        .frame(width: 50.0, height: 50.0)
                        .scaledToFit()
                    
                    Text("The Happy Lettuce")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                }
                TabView{
                    NavigationView{
                        List{
                            ForEach(categories){
                                currentCategory in
                                
                                NavigationLink(destination: ProductListView(products: currentCategory.products)){
                                    HStack(alignment: .center){
                                        Spacer()
                                        VStack(alignment: .center) {
                                            
                                            Image(currentCategory.imageName)
                                                .resizable()
                                                .clipShape(Circle())
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 200, height: 200)
                                            
                                            Text(currentCategory.name)
                                        }
                                        Spacer()
                                    }
                                }
                            }
                        }
                        .navigationBarTitle("Categories:")
                        .listStyle(GroupedListStyle()).layoutPriority(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    }
                    .tabItem {
                             VStack{   Image("products")
                                    .resizable()
                                    .frame(width: 24.0, height: 24.0)

                                   
                                Text("Products")}
                    }
                    CartView(cart: cart)
                        .tabItem{
//                            Image("cart")
                            Text("Cart")
                    }
                }

        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
