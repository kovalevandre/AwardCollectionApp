//
//  MainView.swift
//  AwardCollectionApp
//
//  Created by Andrey Kovalev on 29.12.2023.
//

import SwiftUI

struct MainView: View {
    
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: { buttonAction()}) {
                HStack {
                    Text(awardIsShowing ? "Hide Award" : "Show Award")
                    Spacer()
                    Image(systemName: "chevron.up.square")
                        .scaleEffect(awardIsShowing ? 2 : 1)
                        .rotationEffect(.degrees(awardIsShowing ? 0 : 100))
                }
            }
            Spacer()
            if awardIsShowing {
                StarView()
                    .frame(width: 250, height: 250)
                    .transition(.fadeAndScale)
            }
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var fadeAndScale: AnyTransition {
        let insertion = AnyTransition.scale(scale: 0.8).combined(with: .opacity)
        let removal = AnyTransition.scale(scale: 1.2).combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

#Preview {
    MainView()
}
