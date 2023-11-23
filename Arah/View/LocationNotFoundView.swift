//
//  LocationNotFoundView.swift
//  Arah
//
//  Created by Sufiandy Elmy on 23/11/23.
//

import Foundation
import SwiftUI

struct LocationNotFoundView: View {
      var body: some View {
          ZStack(alignment: .center){
              Color.clear
                  .ignoresSafeArea(.all)
                  .background(.ultraThinMaterial)
              
              VStack(spacing: 30){
                  Image(systemName: "location.fill")
                      .font(.system(size: 88))
                      .foregroundColor(Color("color"))
                  
                  HStack{
                      Text("Correct")
                          .font(.title)
                          .fontWeight(.bold)
                          .multilineTextAlignment(.center)
                      
                      Text("Location")
                          .font(.title)
                          .fontWeight(.bold)
                          .foregroundColor(Color("color"))
                          .multilineTextAlignment(.center)
                  }
                  VStack(spacing: 16){
                      Text("To access the most accurate prayer times instantly through the Arah app, you need to allow location access.")
                          .font(.system(size: 15))
                          .fontWeight(.light)
                          .multilineTextAlignment(.leading)
                      
                      Text("We only need your location information while you are using the app. This enables us to provide prayer times specific to your location and is not shared with any other parties.")
                          .font(.system(size: 15))
                          .fontWeight(.light)
                          .multilineTextAlignment(.leading)
                  }
                  
                  Spacer()
                  
                  Button {
                      if let url = URL(string: UIApplication.openSettingsURLString){
                          UIApplication.shared.open(url, options: [:], completionHandler: nil)
                      }
                           
                  } label: {
                      Image(systemName: "location.fill")
                          .font(.system(size: 22, weight: .bold))
                          .foregroundColor(.white)
                      
                      Text("Allow Location Access")
                          .frame(minWidth: 0, maxWidth: .infinity)
                          .foregroundColor(.white)
                  }
                  .padding()
                  .background(Color("color"))
                  .cornerRadius(15)
                  
                  Text("Enable Location Access from Settings")
                      .font(.system(size: 15))
                      .foregroundColor(.gray)
              }
              .padding(30)
          }
    }
}

#Preview {
    LocationNotFoundView()
}
