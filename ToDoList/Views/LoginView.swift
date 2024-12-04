//
//  LoginView.swift
//  ToDoList
//
//  Created by Adil Rahmani on 11/23/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "I have dementia", angle: 15, backgroundColor: Color.pink)
                //Login Form
                
                Form{
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", backgroundColor: Color.blue){
                        
                    }
                    .padding()
                    
                }
                .offset(y: -50)
                
                
                //Create Account
                VStack{
                    Text("New Around Here?")
                        .font(.callout)
                        .foregroundColor(.gray)
                        .padding(.bottom, 10)
                        .padding(.top, 10)
                    
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                        .font(.caption)
                        .foregroundColor(.blue)

                }
                .padding(.bottom, 15)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
