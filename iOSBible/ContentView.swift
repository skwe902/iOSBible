//
//  ContentView.swift
//  iOSBible
//


import SwiftUI

struct ContentView: View {
    var bible: koreanBible?
    let sampleRecordObj = parse(json: readLocalJSONFile(forName: "bible")!)
    var body: some View {
        Text("Hello, world!")
            .padding()
    }

}
