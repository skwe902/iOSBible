//
//  ContactDevView.swift
//  iOSBible
//Contact developer page

import SwiftUI

struct ContactDevView: View {
    var body: some View {
        ZStack {
                Color.yellow
                    .opacity(0.4)
                    .edgesIgnoringSafeArea(.all)
            VStack{
                Image("photo")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .overlay(Circle().stroke(Color.black, lineWidth: 5))
                Text("About Me:")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Hi! My name is Andy, a Computer Systems engineering student from University of Auckland, New Zealand. \n\nI love making apps and I also enjoy doing a bit of Machine Learning as well. \n\nIf you encounter any bugs, errors or would like to see any features added onto this app, visit my Github page and open a new issue. \n\nGod Bless!")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()
                Link(destination: URL(string: "https://github.com/skwe902")!) {
                    VStack {
                        Image(systemName: "paperplane")
                            .font(.largeTitle)
                        Text("Visit my Github!")
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContactDevView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDevView()
    }
}
