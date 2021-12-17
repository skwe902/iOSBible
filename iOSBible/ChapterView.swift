//
//  ChapterView.swift
//  iOSBible
//

import SwiftUI

struct ChapterView: View {
    let bible: [Bible]
    let bookName:String
    let chapterNo: String
    @ObservedObject var navigation = Navigation()
    var body: some View {
        let (verseNum, verseList) = navigation.getVerseList(book: bookName, chapter: chapterNo)
        VStack{
            List{
                ForEach(Array(zip(verseNum, verseList)), id: \.self) { item in
                    CardView(bible: bible, verseNum: item.0, verseList: item.1)
                }
            }
        }
        .navigationTitle(bookName + " " + chapterNo)
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView(bible: Bible.verses, bookName: "창세기", chapterNo: "1")
    }
}
