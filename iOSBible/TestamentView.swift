//
//  TestamentView.swift
//  iOSBible
//

import SwiftUI

struct TestamentView: View {
    @ObservedObject var navigation = Navigation()
    let testament: String
    var body: some View {
        let (oldList, newList) = navigation.getBookList()
        VStack{
            List{
                if testament == "Old"{
                    Text("구약 (Old Testament)")
                        .padding()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                    ForEach(oldList, id: \.self){ book in
                        NavigationLink(destination: ChapterListView(chapterName: book)){
                            Text(book)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                    }
                }
                else{
                    Text("신약 (New Testament)")
                        .padding()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                    ForEach(newList, id: \.self){ book in
                        NavigationLink(destination: ChapterListView(chapterName: book)){
                            Text(book)
                                .frame(maxWidth: .infinity, alignment: .center)
                        }
                    }
                }
            }
            .navigationBarTitle("개역개정", displayMode: .inline)
        }
    }
}

struct TestamentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TestamentView(testament: "Old")
        }
    }
}
