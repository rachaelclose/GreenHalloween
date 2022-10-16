//
//  SwiftUIView.swift
//  GreenHalloween
//
//  Created by Rachael Close on 10/15/22.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Image("tree")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)}
            .shadow(radius: 7)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
