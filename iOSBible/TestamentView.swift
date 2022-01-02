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
                Text("구약 (Old Testament)")
                    .padding()
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .listRowBackground(Color.yellow)
                ForEach(oldList, id: \.self){ book in
                    NavigationLink(destination: ChapterListView(chapterName: book)){
                        Text(book)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
                .listRowBackground(Color.yellow)
                Text("신약 (New Testament)")
                    .padding()
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding()
                    .listRowBackground(Color.yellow)
                ForEach(newList, id: \.self){ book in
                    NavigationLink(destination: ChapterListView(chapterName: book)){
                        Text(book)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
                .listRowBackground(Color.yellow)
                NavigationLink(destination: ContactDevView()){
                    Text("Contact Developer")
                        .padding()
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationBarTitle("개역개정", displayMode: .inline)
        }
        .listRowBackground(Color.yellow)
    }
}

struct TestamentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            TestamentView()
        }
    }
}
