//
//  PrayerTimeTableItem.swift
//  Arah
//
//  Created by Sufiandy Elmy on 23/11/23.
//

import Foundation
import SwiftUI

struct PrayerTimeTableItem: View {
    
    let prayerName: String
    let prayerTime: String
    @State var isPlayin = true
    
    var body: some View {
        VStack{
            VStack(spacing: 20){
                VStack{
                    ZStack{
                        VStack(alignment: .trailing){
                            Button(action: {
                                isPlayin.toggle()
                            }, label: {
                                Image(systemName: "clock.circle.fill")
                                    .foregroundColor(Color("color"))
                                    .padding(.leading, 60)
                                    .padding(.bottom, 70)
                            })
                        }
                        VStack(alignment: .leading){
                            Text(prayerName)
                                .font(.system(size: 15))
                                .fontWeight(.medium)
                                .frame(maxHeight: 15, alignment: .leading)
                            
                            Text(prayerTime)
                                .font(.system(size: 15))
                                .fontWeight(.medium)
                        }
                        .padding(.trailing, 30)
                        .padding(.top, 30)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)
            .padding(.bottom, 10)
        }
    }
}
