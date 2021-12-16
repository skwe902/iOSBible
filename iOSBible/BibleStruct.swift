//
//  BibleStruct.swift
//  iOSBible
//

import Foundation

struct Bible: Decodable{
    var book: String
    var cate: String
    var chapter: String
    var idx: String
    var long_label: String
    var paragraph: String
    var sentence: String
    var short_label: String
    var testament: String
}

//read the json file
func jsonTwo() -> [Bible]{
    let url = Bundle.main.url(forResource: "bible", withExtension: "json")!
    let data = try! Data(contentsOf: url)
    let verses = try! JSONDecoder().decode([Bible].self, from: data)
    return verses
}

extension Bible: Identifiable{
    var id: String {return idx}
}

extension Bible{
    static let verses:[Bible] = jsonTwo()
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
