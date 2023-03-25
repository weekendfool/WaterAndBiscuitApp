//
//  ContentView.swift
//  WaterAndBiscuit
//
//  Created by Oh!ara on 2023/03/17.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    
//    init() {
//        UITextView.appearance().backgroundColor = .clear
//    }
    
    
    @State var name = ""
    @State var point = 1000
    @State var team = ""

    var body: some View {
        
        
        ZStack() {
            Color.black.ignoresSafeArea()
            
            
            
            VStack() {
                
                Button {
                    print("userName")
                } label: {
                    VStack(spacing: 0) {
                        Text("所属チーム: \(name)")
                            .font(.system(size: 25))
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom)
                        
                        Text("userName: \(name)")
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
                .frame(width: 350, height: 180)
                .padding()
                .bold()
                .background(.white)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                .cornerRadius(10)
                .offset(y: 80)
                
              

                HStack {
                    
                    Button {
                        print("ok")
                    } label: {
                        VStack(spacing: 0) {
                            Text("ブースト")
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                            
                            Text("強化")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        .frame(width: 60, height: 60)
                            
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 70, height: 70)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    
                    Button {
                        print("ok")
                    } label: {
                        VStack(spacing: 0) {
                            Text("シュート")
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                            
                            Text("射撃")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        .frame(width: 60, height: 60)
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 70, height: 70)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)

                    Button {
                        print("ok")
                    } label: {
                        VStack(spacing: 0) {
                            Text("サーチ")
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                            
                            Text("検索")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        .frame(width: 60, height: 60)
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 70, height: 70)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    
                    Button {
                        print("ok")
                    } label: {
                        VStack(spacing: 0) {
                            Text("サポート")
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                            
                            Text("補助")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        .frame(width: 60, height: 60)
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 70, height: 70)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    
                    Button {
                        print("ok")
                    } label: {
                        
                        VStack(spacing: 0) {
                            Text("アイテム")
                                .font(.system(size: 10))
                                .foregroundColor(.black)
                            
                            Text("道具")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        .frame(width: 60, height: 60)
                        
                    }
                    .bold()
                    .padding()
                    .background(.white)
                    .frame(width: 70, height: 70)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    
                }
                .offset(y: 350)
                
              
                
                Spacer()
            }
        }
       
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




