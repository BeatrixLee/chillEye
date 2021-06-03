//
//  OnboardingView.swift
//  chillEye WatchKit Extension
//
//  Created by Meyrillan Silva on 31/05/21.
//

import Foundation
import SwiftUI

// MARK: - Tela completa de onboarding
struct OnboardingView: View {
    

    
    @State var presentExercises = false
    
    @State var descsOnboarding = ["Exercitar os olhos diariamente ajuda \nno relaxamento","Mantenha a cabeça \ne corpo fixos para melhores resultados"]
    
    @State private var selection = 0
   
    
    
    var body: some View {
        
        VStack{
            TabView(selection: $selection) {
                OnboardingOneView(descsOnboarding: $descsOnboarding)
                    .tag(0)
                OnboardingTwoView(descsOnboarding: $descsOnboarding)
                    .tag(1)
            }
        }
    }
    
    // MARK: - Tela completa de onboarding 1
    struct OnboardingOneView: View {
        
        @Binding var descsOnboarding: [String]
        
        private let images = (0...63).map { String(format: "oito%d", $0) }.map { Image($0) }
        

        var body: some View {
            
            VStack{
                
                AnimatingImage(images: images)

                Text(descsOnboarding[0])
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                
                
            }
            
        }
        
    }
    
    // MARK: - Tela completa de onboarding 1
    struct OnboardingTwoView: View {
        
        @Binding var descsOnboarding: [String]
        
        @State var presentExercises = false
        @State private var selection = 0
        
        private let images = (0...47).map { String(format: "massagem%d", $0) }.map { Image($0) }
        
        
        var body: some View {
            VStack{
                
                AnimatingImage(images: images)

                Text(descsOnboarding[1])
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                    .frame(width: 152, height: 50, alignment: .center)
                
                
                
                Button(action: {
                    
                    withAnimation {
                        selection = 2
                        
                        presentExercises = true
                    }
                    
                }, label: {
                    Text("Próximo")
                }).opacity(selection == 0 ? 1 : 0)
                .padding(.top, 5)
                .fullScreenCover(isPresented: $presentExercises) {
                    DiagonalExerciseView()
                }
                
            }
        }
        
    }
    
    struct AnimatingImage: View {
        let images: [Image]
        
        @ObservedObject private var counter = Counter(interval: 0.035)
        
        var body: some View {
            images[counter.value % images.count]
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 57, alignment: .center)
            
        }
    }
    
    private class Counter: ObservableObject {
        private var timer: Timer?
        
        @Published var value: Int = 0
        
        init(interval: Double) {
            timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: true) { _ in self.value += 1 }
        }
    }
    
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

