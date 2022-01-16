//
//  ContentView.swift
//  SampleFanApp
//
//  Created by Ilya on 16.01.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var favoritesToggle = false
    
    var body: some View {
        
        VStack() {
            ZStack(alignment: .top) {
                Image("fan")
                    .resizable()
                    .scaledToFit()
                    
                VStack() {
                    HStack(alignment: .top, spacing: 10) {
                        Button(action: {
                            favoritesToggle.toggle()
                            // add the current preset as 'favorite default'
                        }, label: {
                            Image(systemName: favoritesToggle == false ? "star" : "star.fill")
                        })
                        
                        Spacer()
                        
                        Text("00:00:00")
                            .bold()
                        
                        Spacer()
                        
                        VStack(alignment: .center, spacing: 30) {
                            Button(action: {
                                // go to the pop-up settings screen
                            }, label: {
                                Image(systemName: "gearshape")
                            })
                            Button(action: {
                                // go to the pop-up 'add preset' screen
                            }, label: {
                                Image(systemName: "plus.circle")
                            })
                        }
                    }
                    .foregroundColor(.white)
                    .font(.title2)
                    .opacity(0.9)
                    .padding(
                    )
                    
                    Spacer()
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            Image(systemName: "line.3.crossed.swirl.circle")
                                .opacity(0.3)
                            Image(systemName: "line.3.crossed.swirl.circle")
                                .opacity(0.5)
                            Image(systemName: "line.3.crossed.swirl.circle.fill")
                                .opacity(0.9)
                                .font(.custom("helvetica", size: 60))
                            Image(systemName: "line.3.crossed.swirl.circle")
                                .opacity(0.5)
                            Image(systemName: "line.3.crossed.swirl.circle")
                                .opacity(0.3)
                        }
                        .padding(.horizontal)
                    }
                    .font(.custom("helvetica", size: 50))
                    .foregroundColor(.purple)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 1) {
                    ZStack() {
                        Image("music1")
                            .resizable()
                            .cornerRadius(20)
                            .shadow(color: .white, radius: 2, x: 0, y: 0)
                            .scaledToFit()
                            .frame(width: 180, height: 100)
                            .padding(.vertical)
                        
                        Text("Soothe")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                    }
                    
                    ZStack() {
                        Image("music4")
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 180, height: 100, alignment: .center)
                            .padding(.vertical)
                        
                        Text("Deep Sleep")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                    }
                    
                    ZStack() {
                        Image("music2")
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 180, height: 100, alignment: .center)
                            .padding(.vertical)
                        
                        Text("Nap")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                    }
                    
                    ZStack() {
                        Image("music3")
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 180, height: 100, alignment: .center)
                            .padding(.vertical)
                        
                        Text("Relax")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                    }
                    
                    ZStack() {
                        Image("music5")
                            .resizable()
                            .cornerRadius(20)
                            .scaledToFit()
                            .frame(width: 180, height: 100, alignment: .center)
                            .padding(.vertical)
                        
                        Text("Sleep")
                            .foregroundColor(.white)
                            .font(.title3)
                            .bold()
                    }
                }
                
            }
            
            VStack(spacing: 1) {
                HStack() {
                    Text("Fan")
                    Spacer()
                    Text("Music")
                }
                .padding(.horizontal)
                .foregroundColor(.white)
                .opacity(0.8)
                
                ZStack(alignment: .top) {
                    
                    Text("|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |")
                        .foregroundColor(.white)
                        .opacity(0.2)
                        .frame(height: 50)
                        .font(.title3)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .center) {
                            Spacer()
                            Text("             |               ")
                                .foregroundColor(.purple)
                                .font(.custom("Helvetica", size: 50))
                                .opacity(0.4)
                            Spacer()
                        }
                    }
                    
                }
            }
            .padding(.vertical)
            
            Spacer()
        }
        .background(Color(red: 0, green: 0, blue: 36/255))
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
