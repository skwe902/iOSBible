//
//  ListView.swift
//  iOSBible
//

import SwiftUI

struct CardView: View {
    let bible: Bible
    var body: some View {
        HStack{
            Spacer()
            Text(bible.paragraph)
                .font(.title)
            Spacer()
            Text(bible.sentence)
                .font(.body)
            Spacer()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var bible = Bible.verses[0]
    static var previews: some View {
        CardView(bible: bible)
            .previewLayout(.fixed(width: 500, height: 60))
    }
}
