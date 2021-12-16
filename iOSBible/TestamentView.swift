//
//  TestamentView.swift
//  iOSBible
//

import SwiftUI

var list: [String] = []
struct TestamentView: View {
    let bible: [Bible]
    @ObservedObject var navigation = Navigation()
    
    var body: some View {
        let (oldList, newList) = navigation.getBookList()
        List{
            Text("구약 성서")
                .padding()
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(Color.gray)
            ForEach(oldList, id: \.self){ book in
                NavigationLink(destination: ChapterView(bible: bible)){
                    Text(book)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            Text("신약 성서")
                .padding()
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(Color.gray)
            ForEach(newList, id: \.self){ book in
                NavigationLink(destination: ChapterView(bible: bible)){
                    Text(book)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
    }
}

struct TestamentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TestamentView(bible: Bible.verses)
        }
    }
}
