//
//  CategorySectionView.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import SwiftUI

struct CategorySectionView: View {
    @State private var currentIndex = 0
    @ObservedObject var listVM: ListVM
    var body: some View {
        if let data = listVM.baseData{
            let imgCount = data.images.count
            VStack {
                HStack{
                        HStack {
                            Image(data.images[currentIndex].image)
                                .resizable()//.aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width)
                                //.frame(maxWidth: .infinity)
                                .frame(height: 200)
                        }
                    }.onAppear {
                        Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
                            withAnimation {
                                if self.currentIndex + 1 == data.images.count{
                                    self.currentIndex = 0
                                }else{
                                    self.currentIndex += 1
                                }
                            }
                        }
                    }
                HStack {
                    ForEach(0..<imgCount,id: \.self) { index in
                        Circle()
                            .fill(self.currentIndex == index ? Color.green : Color.gray)
                            .frame(width: 7.5, height: 7.5)
                    }
                }
            }
        }
    }
}

//struct CategorySectionView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategorySectionView()
//    }
//}
