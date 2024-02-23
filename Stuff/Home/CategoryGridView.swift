//
//  CategoryGridView.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import SwiftUI

struct CategoryGridView: View {
    
    let colums: [GridItem] = [
        GridItem(.flexible(), spacing: 12, alignment: nil),
        GridItem(.flexible(), spacing: 12, alignment: nil)
    ]
    var body: some View {
        //ScrollView{
            Section {
                VideoListView(data: [])
            } header: {
                LazyVGrid(columns: colums, alignment: .center, spacing: 12, pinnedViews: [.sectionHeaders]){
                    ForEach(0..<4){ index in
                        VStack(alignment: .leading) {
                            ZStack {
                                Image("road")
                                    .resizable()
                                .frame(height: 200)
                                VStack{
                                    Spacer()
                                    HStack {
                                        Spacer()
                                        Text("21 dines prims")
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
                                Text("$ 3")
                                    .font(.system(size: 20, weight: .semibold))
                                Text("Gyhh")
                                    .font(.system(size: 18, weight: .regular))
                                Text("Hakim Ajaml Khan Road,")
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
            }
        //}
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
    }
}
