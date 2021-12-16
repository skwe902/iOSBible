//
//  ChapterView.swift
//  iOSBible
//

import SwiftUI

struct ChapterView: View {
    let bibles: [Bible]
    var body: some View {
        List{
            ForEach(bibles){
                bible in CardView(bible: bible) where bible.long_label == "창세기" && bible.paragraph == "1"
            }
            
        }
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView(bibles: Bible.verses)
    }
}
