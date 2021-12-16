//
//  ListView.swift
//  iOSBible
//

import SwiftUI

struct CardView: View {
    let bible: Bible
    var body: some View {
        HStack{
            Text(bible.paragraph)
                .font(.title)
                .frame(width: 45, alignment: .center)
            Text(bible.sentence)
                .font(.body)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var bible = Bible.verses[1]
    static var previews: some View {
        CardView(bible: bible)
            .previewLayout(.fixed(width: 500, height: 60))
    }
}
