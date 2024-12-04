//
//  TLButton.swift
//  ToDoList
//
//  Created by Adil Rahmani on 11/27/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let action : () -> Void
    var body: some View {
        Button{
            //Action
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Value", backgroundColor: Color.red){
        //action
    }
}
