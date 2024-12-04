//
//  RegisterView.swift
//  ToDoList
//
//  Created by Adil Rahmani on 11/23/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            HeaderView(title: "Register", subtitle: "Start your ToDo List", angle: 15, backgroundColor: Color.pink)
            
            Form{
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                
                TLButton(title: "Create Account", backgroundColor: Color.green){
                    //Attempt registration
                }
                .padding()
                                
            }
            .offset(y:-50)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
