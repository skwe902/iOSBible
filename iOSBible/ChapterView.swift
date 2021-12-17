//
//  ChapterView.swift
//  iOSBible
//

import SwiftUI

struct ChapterView: View {
    let bookName:String
    let chapterNo: String
    @ObservedObject var navigation = Navigation()
    var body: some View {
        let (verseNum, verseList) = navigation.getVerseList(book: bookName, chapter: chapterNo)
        let newArray = Array(zip(verseNum, verseList))
        VStack{
            List{
                ForEach(newArray, id: \.0) { item in
                    CardView(verseNum: item.0, verseList: item.1)
                }
            }
        }
        .navigationTitle(bookName + " " + chapterNo)
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView(bookName: "창세기", chapterNo: "1")
    }
}
