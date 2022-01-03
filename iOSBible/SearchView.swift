//
//  SearchView.swift
//  iOSBible
//

import SwiftUI

struct SearchView: View {
    @State var textInput: String = ""
    @State var result: String = ""
    @ObservedObject var navigation = Navigation()
    var body: some View {
        ZStack{
            Color.yellow
                .opacity(0.4)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Spacer()
                    Text("Search For: ")
                    TextField(
                            " Type and press return",
                            text: $textInput
                        )
                        .onSubmit {
                            if navigation.checkValid(input: textInput) {
                                result = textInput
                            }
                            else {
                                return
                            }
                        }
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .border(.secondary)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .foregroundColor(Color.black)
                        .font(.title2)
                    Spacer()
                }
                Spacer()
                if result != "" && navigation.checkValid(input: textInput){
                    NavigationLink(destination: ChapterView(bookName: String(result.split(separator: Character(" "))[0]), chapterNo: String(result.split(separator: Character(" "))[1]))){
                        HStack{
                            Spacer()
                            Image(systemName: "paperplane")
                            Text("Navigate to \(textInput)장")
                            Spacer()
                        }
                    }
                }
                Spacer()
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
