//
//  ListHeaderView.swift
//  HuliPizza
//
//  Created by Chase McElroy on 3/17/20.
//  Copyright © 2020 Anivive. All rights reserved.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var orderModel: OrderModel
    var text: String
    var body: some View {
        HStack {
            Text(text)
                .padding(.leading,5)
                .foregroundColor(Color("G2"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }
    .foregroundColor(Color("IP"))
        .font(.headline)
        .background(Color("G4"))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel: OrderModel(), text: "Menu")
    }
}
