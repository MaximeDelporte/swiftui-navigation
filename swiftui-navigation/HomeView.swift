//
//  ContentView.swift
//  swiftui-navigation
//
//  Created by afx on 04/01/2024.
//

import SwiftUI

struct HomeView: View {
    
    // 1. On déclare une variable path de type NavigationPath
    // Cette variable nous permettra de gérer la navigation de notre app
    @State var path: NavigationPath = .init()
    
    var body: some View {
        
        // 2. On implémente notre NavigationStack avec notre variable path.
        NavigationStack(path: $path, root: {
            
            VStack(spacing: 12.0, content: {
                
                Button("Afficher l'écran MapView", action: {
                    // 3. On ajoute le nom de notre écran dans la variable path, ce qui aura pour cause de déclencher le 4.
                    path.append(MapView.screenName)
                })
            })
            // 4. À chaque fois que l'on ajoutera un élément de type String à notre path, cette partie du code sera déclenchée.
            .navigationDestination(for: String.self, destination: { screenName in
                
                // Le screenName, corresponds à MapView.screenName (cf. 3.), donc on pousse l'écran MapView 👍
                // La vérification est optionnelle, elle est uniquement présente si vous souhaitez tester une redirection vers d'autres vues.
                if screenName == MapView.screenName {
                    MapView(path: $path)
                }
                
            })
            // 5. Cette partie du code sera appelée, lorsqu'un objet de type Location sera ajouté à notre path.
            // Ici, c'est l'écran MapView qui donnera cette donnée à notre path.
            .navigationDestination(for: Location.self, destination: { location in
                SettingsView(path: $path, location: location)
            })
            .padding()
        })
    }
}

#Preview {
    HomeView()
}
