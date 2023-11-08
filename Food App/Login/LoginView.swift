//
//  LoginView.swift
//  Food App
//
//  Created by marlon arteaga on 7/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var usernane = ""
    @State private var password = ""
    @StateObject var viewModel = LoginViewModel()
    @State private var next = false
    var appDelegate: AppDelegate? = nil
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("Bienvenido")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Inicia sesión").font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Correo electrónico", text: $usernane)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Contraseña", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Text("¿Olvidaste tu contraseña?")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .foregroundColor(.indigo)
                HStack {
                    RoundedRectangle(cornerRadius: 2)
                        .stroke(Color.purple, lineWidth: 1)
                        .frame(width: 20, height: 20)
                        .layoutPriority(1)
                    Text("Recordar correo")
                }.frame(maxWidth: .infinity, alignment: .leading)
                Spacer()
                
                Button("Ingresar") {
                    viewModel.fetchUser(username: usernane, password: password)
                    self.next = true
                    self.appDelegate?.startTimer()
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .cornerRadius(6)
                
                Button(action: { }) {
                    HStack {
                        Image("google")
                            .renderingMode(.original)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                        Text("Ingresar con Google")
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(6)
            }
            .padding()
            .navigationDestination(
                isPresented: $next) {
                    MainView()
                }
        }
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(appDelegate: nil)
    }
}

