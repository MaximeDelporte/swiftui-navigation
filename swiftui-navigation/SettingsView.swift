//
//  SettingsView.swift
//  swiftui-navigation
//
//  Created by afx on 04/01/2024.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    
    // On déclare nos variables path et location qui seront initialisées depuis la HomeView
    @Binding var path: NavigationPath
    var location: Location
    
    var body: some View {
        VStack(spacing: 22.0, content: {
            Text("SettingsView")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Text("Donnée reçue")
                .multilineTextAlignment(.center)
            
            Text(location.city)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.vertical, 12.0)
            
            Button("Revenir à l'écran précédent", action: {
                path.removeLast()
            })
            
            Button("Revenir à la première page", action: {
                // Tant que notre path.count n'est pas égal à 0, on continue de supprimer le dernier élément.
                while path.count != 0 {
                    path.removeLast()
                }
            })
            
            Spacer()
        })
        .padding()
    }
}
