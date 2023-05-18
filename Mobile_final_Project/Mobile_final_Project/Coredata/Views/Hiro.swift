//Hiro.swift
//  Mobile_final_Project
//  Created by Lalani on 5/16/23.
//

import SwiftUI

struct Hiro: View {
    @State var searchText = " "
    
    var body: some View {
        HStack {
            VStack {
                Text("Little Lemon")
                    .font(.title).fontWeight(.bold).foregroundColor(Color.primaryColor2).padding(10)
                Text("Chicago")
                    .padding(5).fontWeight(.bold).foregroundColor(Color.white)
                Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist.")
                    .padding(8).foregroundColor(Color.white)
            }
            Image("HeroImage").resizable().scaledToFit().cornerRadius(22)
        }.background(Color.primaryColor1)
    }
}

struct Hiro_Previews: PreviewProvider {
    static var previews: some View {
        Hiro()
    }
}
