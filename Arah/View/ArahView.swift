//
//  ArahView.swift
//  Arah
//
//  Created by Sufiandy Elmy on 23/11/23.
//

import SwiftUI

struct ArahView: View {
    
    @ObservedObject var prayerClass: PrayerTimesClass
    @State private var isPresented = false
    @State private var isShowSettings = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color("bg")
                    .ignoresSafeArea()
                ScrollView{
                    if prayerClass.error != nil {
                        VStack{}
                        .onAppear{
                            isPresented = true
                        }
                    } else {
                        if let prayers = prayerClass.prayers {
                            if let nextPrayer = prayers.nextPrayer(){
                                PrayerTimeHeader(prayerName: "\(nextPrayer)", prayerTime: prayers.time(for: nextPrayer), location: prayerClass.city ?? "__")
                                    .frame(maxWidth: .infinity, alignment: .center)
                            } else {
                                        PrayerTimeHeader(prayerName: "Imsak", prayerTime: Date(), location: prayerClass.city ?? "__")
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }
                                    ArahTimeTable(prayerClass: prayerClass)
                                        .listRowSeparator(.hidden)
                                        .onAppear {
                                            isPresented = false
                                        }
                                }
                            }
                        }
                .navigationTitle("Arah")
                
                .fullScreenCover(isPresented: $isPresented, content: { LocationNotFoundView() })
                
                .onAppear{
                    prayerClass.startUpdatingLocation()
                }
                .onDisappear{
                    prayerClass.stopUpdatingLocation()
                      }
                   }
            .padding(.horizontal, 8)
        
               }
      
            }
          
        }

#Preview {
    ArahView(prayerClass: PrayerTimesClass())
}
