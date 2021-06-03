//
//  ResultadosView.swift
//  chillEye WatchKit Extension
//
//  Created by Livia  on 03/06/21.
//

import SwiftUI

struct ResultadosView: View {
    
    @State var presentExercises = false
    
    var body: some View {
        VStack{
            
            HStack{
                Image("iconeResultado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .padding(.trailing)
                
                
                VStack(alignment: .leading){
                    //TEMPO DE HOJE
                    Text("TEMPO DE HOJE")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                        .multilineTextAlignment(.center)
                    //1MIN
                    Text("1'10''")
                        
                        .font(.system(size: 24, weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.07)
                        .font(.system(size: 18, weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.07)
                        
                    
                }
                .padding(.trailing)
            }
            
            Divider()
            
            //DADOS SEMANAIS
            Text("DADOS SEMANAIS").font(.system(size: 13, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .multilineTextAlignment(.leading)
                .frame(width: 140, height: 14, alignment: .leading)
                .padding(4.0)
            
            HStack {
                
                
                ZStack{
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0.9607843160629272, blue: 0.9176470637321472, alpha: 1)))
                        .frame(width: 20, height: 20)
                    //D
                    Text("D").font(.system(size: 13.4, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).tracking(0.05)
                }
                
                ZStack{
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0.9607843160629272, blue: 0.9176470637321472, alpha: 1)))
                        .frame(width: 20, height: 20)
                    Text("S").font(.system(size: 13.4, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).tracking(0.05)
                }
                
                ZStack{
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0.9607843160629272, blue: 0.9176470637321472, alpha: 1)))
                        .frame(width: 20, height: 20)
                    Text("T").font(.system(size: 13.4, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).tracking(0.05)
                }
                
                ZStack{
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0.9607843160629272, blue: 0.9176470637321472, alpha: 1)))
                        .frame(width: 20, height: 20)
                    Text("Q").font(.system(size: 13.4, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).tracking(0.05)
                }
                
                ZStack{
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0.9607843160629272, blue: 0.9176470637321472, alpha: 1)))
                        .frame(width: 20, height: 20)
                        .frame(width: 20, height: 20)
                    Text("Q").font(.system(size: 13.4, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).tracking(0.05)
                }
                ZStack{
                    Circle()
                        .fill(Color(#colorLiteral(red: 0, green: 0.9607843160629272, blue: 0.9176470637321472, alpha: 1)))
                        .frame(width: 20, height: 20)
                    Text("S").font(.system(size: 13.4, weight: .medium, design: .rounded)).foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))).tracking(0.05)
                    
                }
                
            }
            .padding(.bottom, 10)
            Button(action: {
                
                presentExercises = true
                
            }, label: {
                Text("Repetir")
            })
            .fullScreenCover(isPresented: $presentExercises) {
                                DiagonalExerciseView()
                            }

            
            
        }
        .padding(.top, 20)
        .navigationBarHidden(true)

        
    }
}


struct ResultadosView_Previews: PreviewProvider {
    static var previews: some View {
        ResultadosView()
    }
}
