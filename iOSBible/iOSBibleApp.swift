//
//  iOSBibleApp.swift
//  iOSBible
//


import SwiftUI

@main
struct iOSBibleApp: App {
    var body: some Scene {
        WindowGroup {
            //CardView(bible: Bible)
            ChapterView(bible: Bible.verses)
        }
    }
}
