//
//  HomeHeadView.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import SwiftUI

struct HomeHeadView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25, alignment: .trailing)
                Spacer()
                Text("Stuff")
                    .foregroundColor(.black)
                    .font(.system(size: 24, weight: .semibold))
                Spacer()
                Image("filter")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 30, alignment: .trailing)
                
            }.padding().background(Color.white)
        }
    }
}

struct HomeHeadView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeadView()
    }
}
