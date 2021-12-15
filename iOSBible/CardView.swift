//
//  ListView.swift
//  iOSBible
//

import Foundation
import SwiftUI

struct CardView: View {
    let bible: Bible
    var body: some View {
        Text(bible.sentence)
    }
}

struct CardView_Previews: PreviewProvider {
    static var bible = Bible.verses[1]
    static var previews: some View {
        CardView(bible: bible)
    }
}
