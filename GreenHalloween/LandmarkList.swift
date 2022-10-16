//
//  LandmarkList.swift
//  GreenHalloween
//
//  Created by Rachael Close on 10/15/22.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
        
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
