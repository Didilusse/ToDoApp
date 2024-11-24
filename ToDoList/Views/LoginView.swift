//
//  LoginView.swift
//  ToDoList
//
//  Created by Adil Rahmani on 11/23/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView(title: "To Do List", subtitle: "I have dementia", angle: 15, backgroundColor: Color.pink)
                //Login Form
                
                Form{
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button{
                        //Attempt login
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.blue)
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
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
