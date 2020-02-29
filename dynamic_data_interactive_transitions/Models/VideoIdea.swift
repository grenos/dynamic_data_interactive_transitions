//
//  VideoIdea.swift
//  dynamic_data_interactive_transitions
//
//  Created by Vasileios Gkreen on 24/02/2020.
//  Copyright © 2020 Vasileios Gkreen. All rights reserved.
//

import Foundation
import Combine

final class VideoIdea: ObservableObject {
   @Published var title: String = ""
   @Published var contentIdea: String = ""
}



