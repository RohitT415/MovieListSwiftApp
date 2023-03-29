//
//  RohitTStandaloneApp.swift
//  RohitTStandalone
//  2/13/2023

//  credit to TimeOut (https://www.timeout.com/film/the-best-films-of-2022-so-far) for list, images, app icon, and descriptions
//  credit to https://www.appicon.co for making the icon using TimeOut's logo

import SwiftUI

@main
struct RohitTStandaloneApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
