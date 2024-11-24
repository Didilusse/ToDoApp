//
//  RegisterView.swift
//  ToDoList
//
//  Created by Adil Rahmani on 11/23/24.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start your ToDo List", angle: 15, backgroundColor: Color.pink)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
