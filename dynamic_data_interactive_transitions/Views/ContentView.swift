//
//  ContentView.swift
//  dynamic_data_interactive_transitions
//
//  Created by Vasileios Gkreen on 24/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingSecondVC = false
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                
                Text("Video Title").font(.title)
                Text("Video Content").font(.subheadline)
                
                Divider()
                
                NavigationLink(destination: ChannelView()) {
                    Text("Add Channel")
                    
                    Button(action: {
                        self.showingSecondVC.toggle()
                    }) {
                        Text("Add new idea!")
                    }.sheet(isPresented: $showingSecondVC){
                        SecondView()
                    }
                    
                    Spacer()
                }
                .padding()
                .navigationBarTitle("Channel Name")
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
