//
//  CategoryListView.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import SwiftUI

struct CategoryListView: View {
    
    @ObservedObject var listVM: ListVM
    
    var body: some View {
        if let data = listVM.baseData{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    let catCount = data.category.count
                    ForEach(0..<catCount,id: \.self) { i in
                        HStack(spacing: 0) {
                            VStack{
                                Image(data.category[i].image)
                                    .resizable()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(30)
                                Text(data.category[i].name)
                                    .font(.system(size: 16, weight: .semibold))
                            }.frame(width: 85,height: 105)
                        }
                    }
                }
            }
        }
    }
}

//struct CategoryListView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryListView()
//    }
//}
