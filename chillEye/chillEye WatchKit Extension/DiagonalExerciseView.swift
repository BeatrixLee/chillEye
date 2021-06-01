//
//  ContentView.swift
//  chillEye WatchKit Extension
//
//  Created by Beatrix lee on 28/05/21.
//

import SwiftUI

struct DiagonalExerciseView: View {
    
    @State var presentExercises = false
    @State var timeRemaining = 30
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    
    var body: some View {
        VStack {
            HStack {
                
                
                Text("Diagonal").font(.system(size: 16, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.9, blue: 0.13, alpha: 1)))
                    .padding(.trailing, 20)
                
                
                Text("00:\(timeRemaining)").font(.system(size: 16, weight: .semibold)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.trailing)
            }
            
            VStack {
                
                Text("animation placeholder")
                    .padding(.bottom, 20)
                    .padding(.top, 20)
                
                Text("Mova seus olhos \nna diagonal")
                    
                    .font(.footnote)
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(width: 116, height: 35, alignment: .center)
                    .padding(EdgeInsets.init(top: 5, leading: 0, bottom: 0, trailing: 0))
                
            }
            .padding(.bottom, 10)
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color(#colorLiteral(red: 0.1411764770746231, green: 0.1411764770746231, blue: 0.1411764770746231, alpha: 1)))
                    .frame(width: 44, height: 18)
                
                Text("1/3").font(.system(size: 13, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 1, green: 0.9, blue: 0.13, alpha: 1))).multilineTextAlignment(.trailing)
                
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
            EightExercise()
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DiagonalExerciseView()
    }
}




