//
//  ProductView.swift
//  ecommerce
//
//  Created by Serenity on 27/05/2020.
//  Copyright © 2020 Serenity. All rights reserved.
//

import SwiftUI

struct ProductView: View {
    
    @State var quantityOrdered: Int = 0
    @State var cart: [Product] = []
    
    var product: Product
    
    var body: some View {
        VStack
            {
                Spacer()
                VStack{                            Image(self.product.imageName)
                    .resizable()
                    .scaledToFit()
                    Text(self.product.name)
                        .font(.title)
                    Text(self.product.description.capitalized)
                        .font(.body)
                }
                Spacer()
                VStack{
                    Text("Quantity")
                        .padding(10)
                    HStack {
                        Button(action: {
                            //function here
                            if self.quantityOrdered != 0 {
                                self.quantityOrdered -= 1
                                print("-1")

                            }
                            else {
                                print(-1)
                            }
                            
                        }) {
                            Image("minus")
                            .resizable()
                            .scaledToFit()
//                            // text here
//                            Text("-1")
//                                .font(.title)
//                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding(5)
//                                .cornerRadius(15)
                        }.frame(width:30, height: 30)
                        
                        Text(String(self.quantityOrdered))
                            .font(.body)
                            .padding(.all, 8.0)
                            .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .background(Color(red: 0.969, green: 00.969, blue: 00.969, opacity: 1.0)
                        )
                        
                        Button(action: {
                            //function here
                            self.quantityOrdered += 1
                            print("+1")
                        }) {
                            Image("plus")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.black)
                            .padding(5)


                        }.frame(width:30, height: 30)
                    }
                    .padding(10.0)
                }
                Button(action: {
                    //function here
                    self.cart.append(self.product)
                    print(String(self.cart.count))
                }) {
                    Text("Add to Cart")
//                    .resizable()
//                    .scaledToFit()
                    .foregroundColor(.black)
//                    .padding(5)
                }
            
                Spacer()
        }
        .navigationBarTitle(String(self.product.name).capitalized)

        .padding(10.0)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(product: Product(name: "Apple", description: "red", imageName: "apple" ))
    }
}
