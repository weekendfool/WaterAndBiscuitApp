//
//  HomeView.swift
//  WaterAndBiscuit
//
//  Created by Oh!ara on 2023/03/18.
//

import SwiftUI




struct HomeView: View {
    


    func startDomino() {
        
        let dominoOneText = [
            "",
            ""
        ]
        let dominoTwo = [""]
        let dominoThree = [""]
        
        let domions = Int.random(in: 0...2)
        
        for text in dominoOneText {
            dominoText = text
        }
        
//        isDominoAnimetionFlag = false
        print("ok")
        
    }
    
    @State var dominoText = ""
    @State var name = ""
    @State var point = 1000
    @State var team = ""
    @State var time = ""
    @State var isDominoAnimetionFlag = false
    
    let month = 8
    let settingDate = 29
    let date = Int.random(in: 1...31)
    
    

    func timeCheck() {
        let dt = Date()
        var dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = DateFormatter.dateFormat(
            fromTemplate: "HHmmss",
            options: 0,
            locale: Locale(identifier: "ja_JP")
        )
        
        time = dateFormatter.string(from: dt)
    }
    
    

    
    var body: some View {
        
        
        ZStack() {
            Color.black.ignoresSafeArea()
                .onTapGesture {
                    print("$$$$$$$$$$")
                }
               
            VStack() {
                
                Button {
                    print("userName")
                } label: {
                    VStack(spacing: 0) {
                        Text("\(month)/\(date)  \(time)")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom)
                        
                        Text("Name: \(name)")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom)
                        
                        Text("所持P: \(point)")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                        
                }
                .frame(width: 320, height: 150)
                .padding()
                .bold()
                .background(.white)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                .cornerRadius(10)
                .frame(alignment: .center)
                .offset(y: -50)
                
               

                HStack {
                    
                    Spacer()
                    
                    Button {
                        print("ok")
                    } label: {
                        Text("スキル")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80)
                
                            
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 80, height: 80)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    .offset(x: -15)
                    
                    Spacer()
                    
                    Button {
                        print("ok")
                    } label: {
                        Text("メモ")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80)
                            
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 80, height: 80)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    
                    Spacer()

                    Button {
                        print("ok")
                    } label: {
                        Text("カメラ")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80)
                
                            
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 80, height: 80)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    .offset(x: 15)
                    
                    Spacer()
                    
                }
                .frame(alignment: .center)
                .offset(y: -30)
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        print("ok")
                    } label: {
                        Text("データフォルダ")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80)
                
                            
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 80, height: 80)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    .offset(x: -15)
                    
                    Spacer()
                    
                    Button {
                        print("ok")
                    } label: {
                        Text("システム")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80)
                
                            
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 80, height: 80)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    Button {
                        print("ok")
                    } label: {
                        Text("チーム")
                            .font(.system(size: 15))
                            .foregroundColor(.black)
                            .frame(width: 80, height: 80)
                
                            
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 80, height: 80)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    .offset(x: 15)
                    
                    Spacer()
                    
                }
                .frame(alignment: .center)
                .offset(y: -15)
          
//            }
                
            }
            
            
            // ドミノの指先用view
            
            ZStack {
                
                DominoView()
                    .offset(y: isDominoAnimetionFlag ?  0 : -100)
                    .opacity(isDominoAnimetionFlag ? 1.0: 0.9)
                    .animation(Animation.linear, value: 2.0)
                
               
                    
            }
        }
       
//        }
        .onAppear {
            Timer.scheduledTimer(
                withTimeInterval: 1,
                repeats: true) { _ in
                    timeCheck()
                }
        }
        
      
        
       
        
        
    }
    
        
}

struct DominoView: View {
    var body: some View {
        Rectangle()
            .fill(Color.white)
            .frame(width: 320, height: 160)
            .opacity(0.9)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
            .cornerRadius(10)
            .frame(alignment: .center)
        
        Text("ドミノの指先")
            .font(.system(size: 25))
            .foregroundColor(.black)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
