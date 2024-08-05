//
//  home.swift
//  mimo
//
//  Created by Hyun Seo Jung on 8/5/24.
//

import SwiftUI

struct home: View {
    @State private var selectedTab = 0

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(alignment: .center) {
                HStack(alignment: .center){
                    Image("logo")
                        .padding(.leading, 16)
                    Text("미라클 모닝 시작하기")
                        .foregroundStyle(.white)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top, 16)
                
                Spacer()
                
                Image("moon")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 40)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("시작하기")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 0.68, green: 0, blue: 0.74), Color(red: 0.82, green: 0.06, blue: 0.57)]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                }
                .padding(.bottom, 150)
                
                HStack {
                    ForEach(tapList.indices, id: \.self) { index in
                        Spacer()
                        VStack {
                            Button(action: {
                                selectedTab = index
                            }) {
                                Image(tapList[index].image)
                                    .foregroundColor(.white)
                                    .padding(.horizontal, 16)
                            }
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 30, height: 3)
                                .background(LinearGradient(gradient: Gradient(colors: selectedTab == index ? [Color(red: 0.68, green: 0, blue: 0.74), Color(red: 0.82, green: 0.06, blue: 0.57)] : [Color.clear, Color.clear]), startPoint: .top, endPoint: .bottom))
                        }
                        Spacer()
                    }
                }
                .padding(.bottom, 16)
            }
        }
    }
}

#Preview {
    home()
}
