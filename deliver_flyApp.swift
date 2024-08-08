//
//  deliver_flyApp.swift
//  deliver fly
//
//  Created by user on 6/16/24.
//

import SwiftUI

@main
struct deliver_flyApp: App {
    @State private var isSplash = true
    var body: some Scene {
        WindowGroup {
            if isSplash {
                SplashView()
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                            isSplash = false
                        }
                    }
            }
            else{
                HomeView()
            }
            }
    }
}
