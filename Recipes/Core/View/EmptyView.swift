//
//  EmptyView.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/2/24.
//

import SwiftUI

struct EmptyView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("No recipes found")
                .font(.headline)
            Text("Pull to refresh")
                .font(.subheadline)
            Spacer()
        }
    }
}

#Preview {
    EmptyView()
}
