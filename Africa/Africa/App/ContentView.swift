//
//  ContentView.swift
//  Africa
//
//  Created by 馬学渊 on 2021/01/14.
//

import SwiftUI

struct ContentView: View {
    @State private var isGridViewActive: Bool = false
    @State private var gridColumn = 2
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    var gridLayout: [GridItem] {
        Array(repeating: GridItem(.flexible()), count: gridColumn)
    }
    
    var toolbarIcon: String {
        if isGridViewActive {
            switch gridColumn {
            case 1:
                return "square.grid.2x2"
            case 2:
                return "square.grid.3x2"
            default:
                return "rectangle.grid.1x2"
            }
        } else {
            switch gridColumn {
            case 1:
                return "rectangle.grid.1x2"
            case 2:
                return "square.grid.2x2"
            default:
                return "square.grid.3x2"
            }
        }
    }
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(
                                destination: AnimalDetailView(animal: animal),
                                label: {
                                    AnimalListItemView(animal: animal)
                                }
                            )
                        }
                        
                        CreditsView()
                            .modifier(CenterModifier())
                    }
                } else {
                    ScrollView(.vertical, showsIndicators: false, content: {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10, content: {
                            ForEach(animals) { animal in
                                NavigationLink(
                                    destination: AnimalDetailView(animal: animal),
                                    label: {
                                        AnimalGridItemView(animal: animal)
                                    })
                            }
                        })
                        .padding(10)
                        .animation(.easeIn)
                    })
                }
            }
            .navigationBarTitle("Africa", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 16) {
                        Button(action: {
                            isGridViewActive = false
                            haptics.impactOccurred()
                        }, label: {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        })
                        
                        Button(action: {
                            if !isGridViewActive {
                                isGridViewActive = true
                            } else {
                                if gridColumn == 3 {
                                    gridColumn = 1
                                } else {
                                    gridColumn += 1
                                }
                                
                            }
                            
                            haptics.impactOccurred()
                        }, label: {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
