//
//  SecondView.swift
//  dynamic_data_interactive_transitions
//
//  Created by Vasileios Gkreen on 24/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    // access presentationMode which binds to the presentationMode of this VC
    // https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-a-view-dismiss-itself
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
    
    @Binding var videoTitle: String
    @Binding var videoContent: String
    
    @EnvironmentObject var channelData: ChannelData
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                TextField("video title", text: $videoTitle)
                TextField("video content", text: $videoContent)
                Divider()
                Button(action: {
                    // to dismiss the view
                    self.presentationMode.wrappedValue.dismiss()
                }){
                    Text("Dismiss this VC")
                }
                Spacer()
            }
            .padding()
            .navigationBarTitle("\(channelData.channelName) Video")
        }
    }
}



//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView()
//    }
//}
