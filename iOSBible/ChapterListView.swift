//
//  ChapterListView.swift
//  iOSBible
//

import SwiftUI

struct ChapterListView: View {
    @ObservedObject var navigation = Navigation()
    let chapterName:String
    var body: some View {
        let count = navigation.getNumChapter(book: chapterName)
        List{
            ForEach(count, id:\.self){ num in
                NavigationLink(destination: ChapterView(bookName: chapterName, chapterNo: num)){
                    Text(num)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
        .navigationTitle(chapterName)
    }
}

struct ChapterListView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterListView(chapterName: "창세기")
    }
}
