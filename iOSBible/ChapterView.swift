//
//  ChapterView.swift
//  iOSBible
//

import SwiftUI

struct ChapterView: View {
    let bible: [Bible]
    let text = "창세기 1"
    var body: some View {
        VStack{
            Text(text)
                .font(.title)
            List{
                ForEach(bible){ bible in
                    if(bible.short_label == "창" && bible.chapter == "1"){
                        CardView(bible: bible)
                    }
                       }
            }
        }
    }
}

struct ChapterView_Previews: PreviewProvider {
    static var previews: some View {
        ChapterView(bible: Bible.verses)
    }
}
