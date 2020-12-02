//
//  MyProgressView.swift
//  ReusableViewsAndModifiers
//
//  Created by Gabriel Theodoropoulos.
//

import SwiftUI

struct MyProgressView: View {
    var progress: Double
    var progressColor: Color
    
    // Add this property.
    var showProgressText = false
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(height: 20)
                        .foregroundColor(.gray)
                        .background(Color.clear)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: (CGFloat(self.getProgress()) * geometry.size.width) / 100,
                               height: 20)
                        .foregroundColor(progressColor)
                        .background(Color.clear)
                        
                }
            }
            
            // Progress text will be added here
            
            if showProgressText {
                Text("\(Int(getProgress()))%")
                    .padding(.top, 20)
                    .font(.callout)
            }
            
        }
        .frame(height: showProgressText ? 40 : 20)
        .padding(12)
    }
    
    
    func getProgress() -> Double {
        if (0...100).contains(progress) {
            return progress
        } else {
            return progress < 0 ? 0 : 100
        }
    }
}

struct MyProgressView_Previews: PreviewProvider {
    static var previews: some View {
        MyProgressView(progress: 40, progressColor: .green)
            .previewLayout(.sizeThatFits)
    }
}
