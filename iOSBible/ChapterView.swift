//
//  ChapterView.swift
//  iOSBible
//

import SwiftUI

struct ChapterView: View {
    let bible: [Bible]
    let bookName:String
    let chapterNo: String
    var body: some View {
        VStack{
            List{
                ForEach(bible){ bible in
                    if(bible.long_label == bookName && bible.chapter == chapterNo){
                        CardView(bible: bible)
                    }
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
