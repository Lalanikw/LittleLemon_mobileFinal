//
//  Home.swift
//  Mobile_final_Project
//
//  Created by Lalani on 5/11/23.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        
        @Environment(\.managedObjectContext) var viewContext
        let persistence = PersistenceController.shared
        
        VStack {
            TabView {
                Menu()
                    .environment(\.managedObjectContext, persistence.container.viewContext)
                    .tabItem{
                        Label("Menu", systemImage: "list.dash")
                    }
                UserProfile()
                    .tabItem{
                        Label("Profile", systemImage: "square.and.pencil")
                    }
            } .navigationBarBackButtonHidden(true)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
