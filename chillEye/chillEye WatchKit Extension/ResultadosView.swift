//
//  ResultadosView.swift
//  chillEye WatchKit Extension
//
//  Created by Livia  on 03/06/21.
//

import SwiftUI

struct ResultadosView: View {

    var body: some View {
        VStack{
            
            HStack{
                Image(iconeResultado)
                    .resizable()
                    .frame(width: 80, height: 40)

                VStack{
                    
            //TEMPO DE HOJE
            Text("TEMPO DE HOJE")
                    .font(.system(size: 12, weight: .medium))
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 2)
                    
            //1MIN
            Text("1")
    
                .font(.system(size: 24, weight: .medium, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.07) + Text("MIN")
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.07)
                
                
            }

                
                ZStack {
                    

                    Circle()
                    .fill(Color(#colorLiteral(red: 0, green: 0.9607843160629272, blue: 0.9176470637321472, alpha: 1)))
                    .frame(width: 20, height: 20)
                    
                    Text("S").font(.system(size: 13, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).multilineTextAlignment(.trailing)
                    
                    Circle()
                    .fill(Color(#colorLiteral(red: 0, green: 0.9607843160629272, blue: 0.9176470637321472, alpha: 1)))
                    .frame(width: 20, height: 20)
                    
                    Text("D").font(.system(size: 13, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).multilineTextAlignment(.trailing)
                    
                    
                    
                }
                //DADOS SEMANAIS
                Text("DADOS SEMANAIS").font(.system(size: 15, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.07)
            
                

            }
            
        }
    }
}

struct ResultadosView_Previews: PreviewProvider {
    static var previews: some View {
        ResultadosView()
    }
}
