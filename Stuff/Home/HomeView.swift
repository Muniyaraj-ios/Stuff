//
//  HomeView.swift
//  Stuff
//
//  Created by Apple on 22/02/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var listVM = ListVM()
    var body: some View {
        ZStack {
            Color.gray.opacity(0.1)
            VStack {
                HomeHeadView()
                ScrollView {
                    VStack(spacing: 15) {
                        CategorySectionView(listVM: listVM)
                        CategoryListView(listVM: listVM).padding(.leading, 6)
                        GridItemView(listVM: listVM)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
