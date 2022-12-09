//
//  ContentView.swift
//  LNPopupUI_Demo
//
//  Created by Ed on 12/9/22.
//

import SwiftUI
import LNPopupUI

struct ContentView: View {
  @State var isLoggedIn = false
  @State var isPlayerPresented = true
  @State var emailField = ""

  var body: some View {
    if isLoggedIn {
      VStack {
        Image(systemName: "globe")
          .imageScale(.large)
          .foregroundColor(.accentColor)
        Text("Hello, world!")
        Button(action: {
          isLoggedIn = false
        }, label: {
          Text("Logout")
        })
      }
      .popup(isBarPresented: $isPlayerPresented, popupContent: {
        Text("Player Content")
      })
      .popupBarCustomView {
        HStack {
          Text("Song Title")
        }
        .padding()
      }
    } else {
      Form {
        TextField("email", text: $emailField)
        Button(action: {
          isLoggedIn = true
        }, label: {
          Text("Login")
        })
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
