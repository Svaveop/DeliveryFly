//
//  SplashView.swift
//  deliver fly
//
//  Created by user on 6/16/24.
//

import SwiftUI

struct SplashView: View {
    @State private var animationValue = 0.5
    var body: some View {
        VStack{
            Image(.logo)
                .renderingMode(.template)
                .foregroundStyle(.white)
                .padding()
                .scaleEffect(animationValue)
            Text("DeliveryFly")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.darkOrange, ignoresSafeAreaEdges: .all)
        .animation(.easeInOut(duration: 1.5), value:
        animationValue)
        .onAppear{ animationValue = 1.0}
    }
}

#Preview {
    SplashView()
}
