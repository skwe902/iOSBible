//
//  Navigation.swift
//  iOSBible
//

import Foundation

class Navigation: ObservableObject{
    @Published var verse:String = ""
    @Published var chapter:String = ""
    @Published var book:String = ""
    @Published var oldList:[String] = []
    @Published var newList:[String] = []
    @Published var numChapter:[String] = []
    
    func getBookList()->([String], [String]){
        for bible in Bible.verses{
            if !oldList.contains(bible.long_label) && bible.testament == "구"{
                oldList.append(bible.long_label)
            }
            else if !newList.contains(bible.long_label) && bible.testament == "신"{
                newList.append(bible.long_label)
            }
        }
        return (oldList, newList)
    }
    
    func getNumChapter(chapter: String) -> [String]{
        for bible in Bible.verses{
            if bible.long_label == chapter{
                numChapter.append(bible.chapter)
            }
        }
        return numChapter
    }
    
    
}
