//
//  ChannelView.swift
//  dynamic_data_interactive_transitions
//
//  Created by Vasileios Gkreen on 24/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI

struct ChannelView: View {
    
    @State private var channelName = "My Channel"
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                TextField("Channel Name", text: $channelName)
                Divider()
                Button(action: {
                    
                }) {
                    Text("Dismiss this VC")
                }
                Spacer()
                navigationBarTitle("Channel Data")
            }
        }
    }
}

struct ChannelView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
    }
}
