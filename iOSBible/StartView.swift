//
//  StartView.swift
//  iOSBible
//

import SwiftUI

struct StartView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("개역개정")
                .font(.largeTitle)
            Spacer()
            Text("무슨 일을 하든지 \n 마음을 다하여 주께 하듯 하고 \n 사람에게 하듯 하지 말라 \n \n 골로새서 3:23")
                .multilineTextAlignment(.center)
            Spacer()
        
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
