//
//  ChannelView.swift
//  dynamic_data_interactive_transitions
//
//  Created by Vasileios Gkreen on 24/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI

struct ChannelView: View {
    
    // access presentationMode which binds to the presentationMode of this VC
    // https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-a-view-dismiss-itself
    @Environment(\.presentationMode) var presentationMode:Binding<PresentationMode>
    
    @EnvironmentObject var channelData: ChannelData
        
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                TextField("Channel Name", text: $channelData.channelName)
                Divider()
                Button(action: {
                    // to dismiss the view
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Dismiss this VC")
                }
                Spacer()
                
            }.padding()
            .navigationBarTitle("Channel Data")
        }
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
