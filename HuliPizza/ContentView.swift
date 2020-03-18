//
//  ContentView.swift
//  HuliPizza
//
//  Created by Chase McElroy on 3/16/20.
//  Copyright © 2020 Anivive. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel: OrderModel
    @State var isMenuDisplayed: Bool = true
    var body: some View {
        
        VStack {
//            ContentHeaderView()
//                .layoutPriority(2)
            Button(action: {
                self.isMenuDisplayed.toggle()
            }) { PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
            }
            
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1)
                .animation(.spring())


            .layoutPriority(1)

//            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
            ContentView(orderModel: OrderModel())
                .environmentObject(UserPreferences())
                .colorScheme(.dark)
                .background(Color.black)
        }
    }
}
