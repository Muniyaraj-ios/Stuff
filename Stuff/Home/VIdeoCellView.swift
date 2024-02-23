//
//  VIdeoCellView.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import SwiftUI

struct VIdeoCellView: View {
    let details: BaseModel.VideoDataModel
    var body: some View {
        ZStack{
            Image(details.image).resizable()
                .frame(width: 230, height: 280)
            Image(systemName: "play.fill")
                .renderingMode(.template).resizable()
                .foregroundColor(.white)
                .frame(width: 30, height: 30)
        }
    }
}

//struct VIdeoCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        VIdeoCellView()
//    }
//}
