//
//  CategoryColumnVIew.swift
//  Stuff
//
//  Created by Apple on 23/02/24.
//

import SwiftUI

struct CategoryColumnVIew: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("road")
                .resizable()
                .frame(width: 230, height: 230)
            Text("$ 3")
                .font(.system(size: 20, weight: .semibold))
            Text("Gyhh")
                .font(.system(size: 18, weight: .regular))
            Text("Hakim Ajaml Khan Road,")
                .foregroundColor(.gray)
                .font(.system(size: 18, weight: .regular))
                .padding(.top, 2)
                .padding(.bottom, 8)
            
        }.background(Color.green)
    }
}

struct CategoryColumnVIew_Previews: PreviewProvider {
    static var previews: some View {
        CategoryColumnVIew()
    }
}
