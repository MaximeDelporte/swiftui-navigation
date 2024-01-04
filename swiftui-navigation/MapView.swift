//
//  MapView.swift
//  swiftui-navigation
//
//  Created by afx on 04/01/2024.
//

import Foundation
import SwiftUI

struct MapView: View {
    
    static let screenName = "MapView"
    
    // On déclare une variable @Binding path qui sera initialisée depuis la HomeView
    @Binding var path: NavigationPath
    
    var body: some View {
        VStack(spacing: 12.0) {
            Text("MapView")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Afficher l'écran SettingsView", action: {
                let location = Location(city: "Lille")
                // 2. Étant donné que nous avons mis un .navigationDestination(for: Location.self) dans notre HomeView
                // On passe l'objet location à notre variable path qui aura pour conséquence de déclencher la redirection
                path.append(location)
            })
            
            Spacer()
        }
        .padding()
    }
}
