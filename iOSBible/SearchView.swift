//
//  SearchView.swift
//  iOSBible
//

import SwiftUI

struct SearchView: View {
    @State var textInput: String = ""
    @State var result: String = ""
    var body: some View {
        VStack{
            TextField(
                    "Input your search and press return",
                    text: $textInput
                )
                .onSubmit {
                    result = textInput
                }
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)
            if result != "" {
                NavigationLink(destination: ChapterView(bookName: String(result.split(separator: Character(" "))[0]), chapterNo: String(result.split(separator: Character(" "))[1]))){
                    Text("Navigate to \(textInput)")
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
