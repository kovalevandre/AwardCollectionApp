//
//  AwardsView.swift
//  AwardCollectionApp
//
//  Created by Andrey Kovalev on 29.12.2023.
//

import SwiftUI

struct AwardsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    GradientRectangle()
                        .frame(width: 200, height: 200)
                    PathView()
                        .frame(width: 200, height: 200)
                    CurseView()
                        .frame(width: 200, height: 200)
                    StarView()
                        .frame(width: 200, height: 200)
                }
            }
            .navigationTitle("Awards")
        }
    }
}

#Preview {
    AwardsView()
}
