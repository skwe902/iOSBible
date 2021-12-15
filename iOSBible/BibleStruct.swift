//
//  BibleDatabase.swift
//  iOSBible
//

import Foundation

struct bible: Codable {
    let book: Int
    let cate: Int
    let chapter: Int
    let idx: Int
    let long_label: String
    let paragraph: Int
    let sentence: String
    let short_label: String
    let testament: String
}

struct koreanBible: Codable {
    let verses: [bible]
}


//    "book": "1",
//    "cate": "1",
//    "chapter": "1",
//    "idx": "1",
//    "long_label": "창세기",
//    "paragraph": "1",
//    "sentence": "<천지 창조> 태초에 하나님이 천지를 창조하시니라",
//    "short_label": "창",
//    "testament": "구"
