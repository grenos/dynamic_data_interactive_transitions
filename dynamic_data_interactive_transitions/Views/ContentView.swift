//
//  ContentView.swift
//  dynamic_data_interactive_transitions
//
//  Created by Vasileios Gkreen on 24/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationV
            VStack(alignment: .leading) {
                
                Text("Video Title").font(.title)
                Text("Video Content").font(.subheadline)
                
                Divider()
                
                NavigationLink(destination: ChannelView()) {
                    Text("Add Channel")
                    Button(action: {
                        
                    }) {
                        Text("Add new idea!")
                    }
                    
                    Spacer()
                }
                .padding()
                .NavigationBarTitle("Channel Name")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
