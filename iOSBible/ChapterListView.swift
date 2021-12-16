//
//  ChapterListView.swift
//  iOSBible
//
//  Created by Dani D on 16/12/21.
//

import SwiftUI

struct ChapterListView: View {
    @ObservedObject var navigation = Navigation()
    let bible: [Bible]
    let chapterName:String
    var body: some View {
        let count = navigation.getNumChapter(book: chapterName)
        List{
            ForEach(count, id:\.self){ num in
                NavigationLink(destination: ChapterView(bible: bible, bookName: chapterName, chapterNo: num)){
                    Text(num)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
    }
}

struct ChapterListView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterListView(bible: Bible.verses, chapterName: "창세기")
    }
}
