//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Chase McElroy on 3/17/20.
//  Copyright © 2020 Anivive. All rights reserved.
//

import SwiftUI

struct OrderRowView: View {
    var orderItem: OrderItem
    var body: some View {
        VStack {
            HStack(alignment: .firstTextBaseline) {
                Image(systemName: "\(orderItem).square")
                Text(orderItem.description)
                    .font(.headline)
                Spacer()
                Text(orderItem.formattedExtendedPrice)
                .bold()
            }
            Text(orderItem.comments)
        }.animation(.none)
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(orderItem: testOrderItem)
            .environment(\.sizeCategory,.accessibilityExtraExtraLarge)
    }
}
