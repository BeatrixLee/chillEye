//
//  chillEyeApp.swift
//  chillEye WatchKit Extension
//
//  Created by Beatrix lee on 28/05/21.
//

import SwiftUI

@main
struct chillEyeApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                OnboardingView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
