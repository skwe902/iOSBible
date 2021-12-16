//
//  TestamentView.swift
//  iOSBible
//

import SwiftUI

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
            ForEach(oldList, id: \.self){ book in
                NavigationLink(destination: ChapterListView(bible: bible, chapterName: book)){
                    Text(book)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            Text("신약 성서")
                .padding()
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
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
