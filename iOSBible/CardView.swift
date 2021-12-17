//
//  ListView.swift
//  iOSBible
//

import SwiftUI

struct CardView: View {
    let bible: Bible
    let verseNum: String
    let verseList: String
    var body: some View {
        HStack{
            Text(verseNum)
                .font(.title)
                .frame(width: 45, alignment: .center)
            Text(verseList)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var bible = Bible.verses[1]
    static var previews: some View {
        CardView(bible: bible, "1", "hello")
            .previewLayout(.fixed(width: 500, height: 60))
    }
}
