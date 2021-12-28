//
//  ContactDevView.swift
//  iOSBible
//Contact developer page

import SwiftUI

struct ContactDevView: View {
    var body: some View {
        VStack{
            Image("photo")
                .frame(width: 300, height: 300)
                .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.gray, lineWidth: 10))
            Spacer()
            Text("This app was created by Andy Kweon")
            Spacer()
        }
        
    }
}

struct ContactDevView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDevView()
    }
}
