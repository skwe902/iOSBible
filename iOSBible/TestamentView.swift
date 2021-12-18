//
//  TestamentView.swift
//  iOSBible
//

import SwiftUI

struct TestamentView: View {
    @ObservedObject var navigation = Navigation()
    var body: some View {
        let (oldList, newList) = navigation.getBookList()
        VStack{
            List{
                Text("구약 성서")
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
                Text("신약 성서")
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
    //        .navigationBarTitle("")
    //        .navigationBarHidden(true)
            .navigationBarTitle("개역개정", displayMode: .inline)
        }
    }
}

struct TestamentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TestamentView()
        }
    }
}
