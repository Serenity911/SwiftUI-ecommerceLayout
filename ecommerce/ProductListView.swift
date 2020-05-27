//
//  ProductListView.swift
//  ecommerce
//
//  Created by Serenity on 26/05/2020.
//  Copyright © 2020 Serenity. All rights reserved.
//

import SwiftUI

struct ProductListView: View {
    @State var isLiked: Bool = false
    
    var products: [Product]
    
    
    var body: some View {
        NavigationView{        List{
            ForEach(products){
                currentProduct in
                NavigationLink(destination: ProductView(product: currentProduct))
                {
                    Section
                        {
                            VStack{                            Image(currentProduct.imageName)
                                .resizable()
                                .scaledToFit()
                                
                                Text(currentProduct.name)
                                Text(currentProduct.description.capitalized)
                                
                            }
                    }
                }
                
            }
        }.navigationBarTitle("Products:")
            
        }
    }
}
struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(products: [Product(name: "Apple", description: "red", imageName: "apple" ), Product(name: "Pear", description: "juicy", imageName: "pear" )])
    }
}
