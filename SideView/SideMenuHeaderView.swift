//
//  SideMenuHeaderView.swift
//  SideView
//
//  Created by Sarika on 02.03.22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowing : Bool
    var body: some View {
        ZStack(alignment: .topTrailing){
            
            Button (action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })
          
            VStack(alignment: .leading) {
                Image("leaf")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 65 , height: 65 )
                    .clipShape(Circle())
                    .padding(.bottom, 15)
                
            Text("Sara Patel")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
            Text("@sara")
                    .font(.system(size: 14))
                    .padding(.bottom,24)
                
                
                HStack(spacing : 12) {
                    HStack(spacing: 4) {
                        Text("1050").bold()
                        Text("Following")
                    }
                    HStack(spacing: 4) {
                        Text("780").bold()
                        Text("Followers")
                    }
                    Spacer()
                }
            Spacer()
            }
            .foregroundColor(.white)
        .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
