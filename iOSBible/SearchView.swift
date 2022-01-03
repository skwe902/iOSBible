//
//  SearchView.swift
//  iOSBible
//

import SwiftUI

struct SearchView: View {
    @State var textInput: String = ""
    @State var result: String = ""
    @State var enter: Bool = false
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
                            result = textInput
                            enter = true
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
                if result != "" && enter == true{
                    NavigationLink(destination: ChapterView(bookName: String(result.split(separator: Character(" "))[0]), chapterNo: String(result.split(separator: Character(" "))[1]))){
                        HStack{
                            Spacer()
                            Image(systemName: "paperplane")
                            Text("Navigate to \(textInput)장")
                            Spacer()
                        }
                    }
                }
                else{
                    //if not valid (Navigation > returnValid func) ToDo
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
