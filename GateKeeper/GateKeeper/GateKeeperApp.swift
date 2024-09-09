//
//  GateKeeperApp.swift
//  GateKeeper
//
//  Created by Siddhant Sapru on 2024-09-08.
//

import SwiftUI
import Firebase
import UserNotifications

@main
struct GateKeeperApp: App {
    
    // Create an instance of the AppDelegate
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    //Initialize FireBase when the app starts
    init() {
        FirebaseApp.configure()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) {
            granted, error in print("Permssion granted: \(granted)")
        }
        
        UIApplication.shared.registerForRemoteNotifications()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
