//
//  HistoryListView.swift
//  HuliPizza
//
//  Created by Chase McElroy on 3/17/20.
//  Copyright © 2020 Anivive. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    var historyModel = HistoryModel()
    @Binding var imageID: Int
        var body: some View {
            NavigationView {
                    List(historyModel.historyItems) { item in
                        NavigationLink(destination: HistoryDetailView(historyItem: item, imageID: self.$imageID)) {
                            HistoryRowView(historyItem: item)
                        }
                        
                    
                }
            }

        }
    }

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imageID: .constant(0))
    }
}
