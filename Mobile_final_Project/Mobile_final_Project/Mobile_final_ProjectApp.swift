//
//  Mobile_final_ProjectApp.swift
//  Mobile_final_Project
//
//  Created by Lalani on 5/10/23.
//

import SwiftUI

@main
struct Mobile_final_ProjectApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Onboarding()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
