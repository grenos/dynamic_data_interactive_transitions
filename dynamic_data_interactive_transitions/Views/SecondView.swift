//
//  SecondView.swift
//  dynamic_data_interactive_transitions
//
//  Created by Vasileios Gkreen on 24/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    
    @State private var videoTitle = "Great Title"
    @State private var videoContent = "Great Content"
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                TextField("video title", text: $videoTitle)
                TextField("video content", text: $videoContent)
                Divider()
                Button(action: {
                    
                }){
                    Text("Dismiss this VC")
                }
                Spacer()
            }
            .padding()
            .navigationBarTitle("Video")
        }
    }
}



struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
