//
//  StarView.swift
//  AwardCollectionApp
//
//  Created by Andrey Kovalev on 29.12.2023.
//

import SwiftUI

struct StarView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let lineOne = size * 0.02
            let lineTwo = size * 0.1
            let lineThree = size * 0.9
            let lineFour = size * 0.75
            let lineFive = size * 0.25
            let lineSix = size * 0.98
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: lineOne))
                path.addLine(to: CGPoint(x: lineThree, y: lineFour))
                path.addLine(to: CGPoint(x: lineTwo, y: lineFour))
                
                path.move(to: CGPoint(x: middle, y: lineSix))
                path.addLine(to: CGPoint(x: lineTwo, y: lineFive))
                path.addLine(to: CGPoint(x: lineThree, y: lineFive))
            }
            
            .fill(
            RadialGradient(
                colors: [.indigo, .white],
                center: .center,
                startRadius: size * 0.05,
                endRadius: size * 0.6
                )
            )
            
            Image(systemName: "wand.and.stars")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(middle / 400)
        }
    }
}

#Preview {
    StarView()
        .frame(width: 200, height: 200)
}
