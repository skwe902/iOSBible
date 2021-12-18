//
//  ListView.swift
//  iOSBible
//

import SwiftUI

struct CardView: View {
    let verseNum: String
    let verseList: String
    var body: some View {
        HStack{
            Text(verseNum)
                .font(.title)
                .frame(width: 50, alignment: .center)
            Text(verseList)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var bible = Bible.verses[1]
    static var previews: some View {
        CardView(verseNum: "1", verseList: "hello")
            .previewLayout(.fixed(width: 500, height: 60))
    }
}
