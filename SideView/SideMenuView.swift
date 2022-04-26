//
//  SideMenuView.swift
//  SideView
//
//  Created by Sarika on 02.03.22.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing : Bool
    
    var body: some View {
      
        ZStack{
            LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
              
                //Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                    
                //Cell items
                ForEach(SideMenuViewModel.allCases, id: \.self) {option in
                    //SideMenuOptionView(viewModel: option)
                    NavigationLink {  //this will create navigation link
                        Text(option.title)
                    } label: {
                        SideMenuOptionView(viewModel: option)
                    }
                }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
