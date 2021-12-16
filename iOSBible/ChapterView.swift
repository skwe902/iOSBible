//
//  ChapterView.swift
//  iOSBible
//

import SwiftUI

struct ChapterView: View {
    let bible: [Bible]
    var body: some View {
        List{
            ForEach(bible.filter{$0.short_label.contains("창") && $0.chapter.contains("1")}){
                bible in CardView(bible: bible)
            }
            
        }
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView(bible: Bible.verses)
    }
}
