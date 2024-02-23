//
//  VideoListView.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import SwiftUI

struct VideoListView: View {
    let data: [BaseModel.VideoDataModel]
    var body: some View {
        VStack(alignment: .leading) {
            Text("Video rekalms")
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(.green)
            ScrollView(.horizontal,showsIndicators: false) {
                let videoCount = data.count
                HStack{
                    ForEach(0..<videoCount, id: \.self) { i in
                        HStack(spacing: 10) {
                            let result = data[i]
                            VIdeoCellView(details: result)
                        }
                    }
                }
            }
        }.padding([.top,.bottom], 20)
            .padding([.leading,.trailing], 10).background {
                RoundedRectangle(cornerRadius: 0)
                    .fill(Color.white)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
            }.padding(10)
    }
}

//struct VideoListView_Previews: PreviewProvider {
//    static var previews: some View {
//        VideoListView()
//    }
//}
