//
//  HistoryView.swift
//  HuliPizza
//
//  Created by Chase McElroy on 3/17/20.
//  Copyright © 2020 Anivive. All rights reserved.
//

import SwiftUI

struct HistoryView: View {
    @State var imageID: Int = 0
    var historyModel = HistoryModel()
    var body: some View {
        
        VStack {
//            ContentHeaderView()
            PageTitleView(title: "Pizza History")
            SelectedImageView(image: "\(imageID)_250w")
                .padding(5)
            HistoryListView(imageID: $imageID)
            Spacer()
        }
        .padding()
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView(historyModel: HistoryModel())
            HistoryView(historyModel: HistoryModel())
                .colorScheme(.dark)
                .background(Color.black)

        }
    }
}
