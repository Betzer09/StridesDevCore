//
//  SwiftUIView.swift
//  
//
//  Created by Austin Betzer on 12/1/20.
//

import SwiftUI

public struct SDButton: View {
    public var body: some View {
        Button("Schedule a ride") {
            print("Button action")
        }
        .frame(width: 168,height: 52)
        .font(AppTheme.Fonts.internBold.font)
        .foregroundColor(.black)
        .background(
            AppTheme.Colors.primaryColor.color
        )
        .cornerRadius(8)
    }
}

public struct SwiftUIView_Previews: PreviewProvider {
    static public var previews: some View {
        SDButton()
    } 
}
