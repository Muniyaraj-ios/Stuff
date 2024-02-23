//
//  GridItemView.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import SwiftUI

struct GridItemView: View {
    
    @ObservedObject var listVM: ListVM
    
    let colums: [GridItem] = [
        GridItem(.flexible(), spacing: 12, alignment: nil),
        GridItem(.flexible(), spacing: 12, alignment: nil)
    ]
    var body: some View {
        
        if let data = listVM.baseData{
            let combineCount = data.combineDat.count
            
            //ScrollView {
                VStack {
                    ForEach(0..<combineCount, id: \.self) { i in
                        VStack {
                            Section {
                                let v2 = data.combineDat[i].videos
                                VideoListView(data: v2)
                            } header: {
                                LazyVGrid(columns: colums, alignment: .center, spacing: 12, pinnedViews: [.sectionHeaders]){
                                    let sect = data.combineDat[i].section
                                    let cb = data.combineDat[i].section.count
                                    ForEach(0..<cb,id: \.self){ index in
                                        let secti = sect[index]
                                        VStack(alignment: .leading) {
                                            ZStack {
                                                Image(secti.image)
                                                    .resizable()
                                                .frame(height: 200)
                                                VStack{
                                                    Spacer()
                                                    HStack {
                                                        Spacer()
                                                        Text(secti.other)
                                                            .font(.system(size: 14, weight: .regular))
                                                            .foregroundColor(.white)
                                                            .padding(8)
                                                            .background{
                                                                Capsule()
                                                                    .fill(Color.black.opacity(0.4))
                                                        }
                                                    }.padding([.bottom,.trailing], 8)
                                                }
                                            }
                                            VStack(alignment: .leading){
                                                Text(secti.title)
                                                    .font(.system(size: 16, weight: .medium))
                                                    .foregroundColor(secti.isOffer ? Color.green : Color.black)
                                                Text(secti.subTitle)
                                                    .font(.system(size: 15, weight: .regular))
                                                Text(secti.address)
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 14, weight: .regular))
                                                    .lineLimit(1)
                                                    .padding(.top, 2)
                                                    .padding(.bottom, 8)
                                            }.padding([.leading,.trailing,.bottom],8)
                                            
                                        }.background {
                                            RoundedRectangle(cornerRadius: 0)
                                                .fill(Color.white)
                                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                                        }
                                    }
                                }.padding(8)
                            }
                            
                            /*Section {
                                let v2 = data.combineDat[i].videos
                                VideoListView(data: v2)
                            } header: {
                                LazyVGrid(columns: colums, alignment: .center, spacing: 12, pinnedViews: [.sectionHeaders]){
                                    let sect = data.combineDat[i].section
                                    let cb = data.combineDat[i].section.count
                                    ForEach(0..<cb){ index in
                                        VStack(alignment: .leading) {
                                            ZStack {
                                                Image(sect[index].image)
                                                    .resizable()
                                                    .frame(height: 200)
                                                VStack{
                                                    Spacer()
                                                    HStack {
                                                        Spacer()
                                                        Text(sect[index].other)
                                                            .font(.system(size: 14, weight: .regular))
                                                            .foregroundColor(.white)
                                                            .padding(10)
                                                            .background{
                                                                Capsule()
                                                                    .fill(Color.black.opacity(0.4))
                                                            }
                                                    }.padding([.bottom,.trailing], 8)
                                                }
                                            }
                                            VStack(alignment: .leading){
                                                Text(sect[index].title)
                                                    .font(.system(size: 20, weight: .semibold))
                                                    .foregroundColor(sect[index].isOffer ? Color.green : Color.label)
                                                Text(sect[index].subTitle)
                                                    .font(.system(size: 18, weight: .regular))
                                                Text(sect[index].address)
                                                    .foregroundColor(.gray)
                                                    .font(.system(size: 15, weight: .regular))
                                                    .padding(.top, 2)
                                                    .padding(.bottom, 8)
                                            }.padding(8)
                                            
                                        }.background {
                                            RoundedRectangle(cornerRadius: 0)
                                                .fill(Color.white)
                                                .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                                        }
                                    }
                                }.padding(8)
                            }*/
                        }
                    }
                }
            //}
        }
    }
}

//struct GridItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        GridItemView()
//    }
//}
