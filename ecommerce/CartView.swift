//
//  CartView.swift
//  ecommerce
//
//  Created by Serenity on 27/05/2020.
//  Copyright © 2020 Serenity. All rights reserved.
//

import SwiftUI

struct CartView: View {
    
    var cart: [Product] = []
    
    var body: some View {
        List{
            ForEach(cart){
                currentProduct in
                
                NavigationLink(destination: ProductView(product: currentProduct)){

                        HStack(alignment: .center) {
                            
                            Image(currentProduct.imageName)
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 200, height: 200)
                            
                            Text(currentProduct.name)
                        }
                }
            }
        }
        .navigationBarTitle("Cart:")
        .listStyle(GroupedListStyle()).layoutPriority(/*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(cart: [Product(name: "Apple", description: "red", imageName: "apple" ), Product(name: "Pear", description: "juicy", imageName: "pear" )])
    }
}
