//
//  ChapterListView.swift
//  iOSBible
//

import SwiftUI

struct ChapterListView: View {
    @ObservedObject var navigation = Navigation()
    let bible: [Bible]
    let chapterName:String
    var body: some View {
        let count = navigation.getNumChapter(book: chapterName)
        List{
            Text(chapterName)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .center)
            ForEach(count, id:\.self){ num in
                NavigationLink(destination: ChapterView(bookName: chapterName, chapterNo: num)){
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
