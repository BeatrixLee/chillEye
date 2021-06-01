//
//  EightExerciseView.swift
//  chillEye WatchKit Extension
//
//  Created by Meyrillan Silva on 01/06/21.
//

import Foundation
import SwiftUI

struct EightExercise: View {
    
    @State var presentExercises = false
    @State var timeRemaining = 20
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            HStack {
                
                
                Text("Oito").font(.system(size: 16, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.9, blue: 0.13, alpha: 1)))
                    .padding(.trailing, 20)
                
                
                Text("00:\(timeRemaining)").font(.system(size: 16, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
                    .padding(.leading, 40)
            }
            
            VStack {
                
                Text("animation placeholder")
                    .padding(.top, 20)
                
                
                Text("Desenhe um 8 no ar com o polegar e acompanhe com sua visão")
                    
                    .font(.footnote)
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(width: 160, height: 50, alignment: .center)
                    .padding(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                
            }
            .padding(.bottom, 20)
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(#colorLiteral(red: 0.1411764770746231, green: 0.1411764770746231, blue: 0.1411764770746231, alpha: 1)))
                    .frame(width: 44, height: 18)
                
                Text("2/3").font(.system(size: 13, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.9, blue: 0.13, alpha: 1))).multilineTextAlignment(.trailing)
                
            }
            
            
            
        }
        .padding(EdgeInsets.init(top: 20, leading: 10, bottom: 10, trailing: 10))
        
        .onReceive(timer) { time in
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                presentExercises = true
            }
        } .fullScreenCover(isPresented: $presentExercises) {
            MassageExercise()
        }
    }
}

struct EightExercise_Previews: PreviewProvider {
    static var previews: some View {
        EightExercise()
    }
}
