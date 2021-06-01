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
    
    //    @State var date = Date()
    //    var timeFormat: DateFormatter {
    //        let formatter = DateFormatter()
    //        formatter.dateFormat = "hh:mm"
    //        return formatter
    //    }
    
    //    func timeString(date: Date) -> String {
    //        let time = timeFormat.string(from: date)
    //        return time
    //    }
    
    @State var presentExercises = false
    
    @State var imagesOnboarding = ["onboardingUm","onboardingDois"]
    @State var descsOnboarding = ["Exercitar os olhos diariamente ajuda \nno relaxamento","Mantenha a cabeça \ne corpo fixos para melhores resultados"]
    
    @State private var selection = 0
    
    
    var body: some View {
        
        VStack{
            
            TabView(selection: $selection) {
                OnboardingOneView(imagesOnboarding: $imagesOnboarding, descsOnboarding: $descsOnboarding)
                    .tag(0)
                OnboardingTwoView(imagesOnboarding: $imagesOnboarding, descsOnboarding: $descsOnboarding)
                    .tag(1)
            }
            
            
        }
        
        
    }
    
    // MARK: - Tela completa de onboarding 1
    struct OnboardingOneView: View {
        
        @Binding var imagesOnboarding: [String]
        @Binding var descsOnboarding: [String]
       
        
    
        var body: some View {
            
            VStack{
                Image(imagesOnboarding[0])
                    .resizable()
                    .frame(width: 80, height: 40)
                Text(descsOnboarding[0])
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                
               
            }
            
        }
        
    }
    
    // MARK: - Tela completa de onboarding 1
    struct OnboardingTwoView: View {
        
        @Binding var imagesOnboarding: [String]
        @Binding var descsOnboarding: [String]
        
        @State var presentExercises = false
        @State private var selection = 0
        
        var body: some View {
            VStack{
                Image(imagesOnboarding[1])
                    .resizable()
                    .frame(width: 80, height: 40)
                Text(descsOnboarding[1])
                    .bold()
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                
                
                Button(action: {
                    
                    withAnimation {
                        selection = 2
                        
                        presentExercises = true
                    }
                    
                }, label: {
                    Text("Próximo")
                }).opacity(selection == 0 ? 1 : 0)
                .fullScreenCover(isPresented: $presentExercises) {
                    DiagonalExerciseView()
                }
            }
        }
        
    }
    
}

// MARK: - Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

