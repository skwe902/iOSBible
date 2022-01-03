//
//  iOSBibleApp.swift
//  iOSBible
//


import SwiftUI

@main
struct iOSBibleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                StartView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}
