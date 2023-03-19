//
//  FirstView.swift
//  WaterAndBiscuit
//
//  Created by Oh!ara on 2023/03/19.
//

import SwiftUI

struct FirstView: View {
    
    @State var name = ""
    @State var isFinished = false
    @State var isError = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            ZStack {
                
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 320, height: 160)
                    .opacity(0.9)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 5))
                    .cornerRadius(10)
                    .frame(alignment: .center)
                    .offset(y: -50)
               
                TextField("名前を入力してください", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .offset(y: -80)
                   
                Button {
                    print("userName")
                    if name.isEmpty {
                        isFinished = true
                    }
                } label: {
                        Text("決定")
                            .font(.system(size: 25))
                            .foregroundColor(.blue)

                }
                
                .frame(width: 318, height: 40)
                .border(Color.gray, width: 1)
                .cornerRadius(10)
                .opacity(0.9)
                .offset(y: 10)
                
        
            }
            
            
            
            if isFinished {
               
            }
            
            
        }
        .alert(isPresented: $isError) {
            Alert(
                title: Text("ERROR"),
                message: Text("他プレイヤーがすでに使用しています。\n別の名前をご入力ください。"),
                dismissButton: .cancel(Text("OK"))
            )
        }
        .alert(isPresented: $isFinished) {
            Alert(
                title: Text("登録完了しました"),
                
                dismissButton: .default(
                    Text("OK"),
                    action: {
                       SkillView()
                    }
                )
            )
        }
        
    }
        
    
}


struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
