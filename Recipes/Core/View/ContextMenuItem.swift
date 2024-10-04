//
//  ContextMenuItem.swift
//  Recipes
//
//  Created by Gerardo Gallegos on 10/4/24.
//

import SwiftUI

struct ContextMenuItem: View {
    let urlString: String?
    let iconName: String
    let title: String
    var body: some View {
        if let urlString = urlString, let url = URL(string: urlString) {
            Link(destination: url) {
                HStack {
                    Image(systemName: iconName)
                        .foregroundStyle(.gray)
                    Text(title)
                }
            }
        }
    }
}

#Preview {
    ContextMenuItem(urlString: "https://www.nyonyacooking.com/recipes/apam-balik~SJ5WuvsDf9WQ", iconName: "link", title: "Recipe Source")
}
