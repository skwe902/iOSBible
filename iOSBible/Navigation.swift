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
    @Published var verseList:[String] = []
    @Published var verseNum:[String] = []
    
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
    
    func getNumChapter(book: String) -> [String]{
        for bible in Bible.verses{
            if !numChapter.contains(bible.chapter) && bible.long_label == book{
                numChapter.append(bible.chapter)
            }
        }
        return numChapter
    }
    
    func getVerseList(book: String, chapter:String) -> ([String], [String]){ //probably return the verse number as well as tuple
        for bible in Bible.verses{
            if !verseList.contains(bible.paragraph) && !verseNum.contains(bible.sentence) && bible.long_label == book && bible.chapter == chapter{
                verseList.append(bible.paragraph)
                verseNum.append(bible.sentence)
            }
        }
        return (verseNum, verseList)
    }
    
    
}
