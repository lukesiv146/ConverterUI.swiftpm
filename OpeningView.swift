//
//  OpeningView.swift
//  ConverterUI
//
//  Created by Luke J. Sivulka on 9/18/23.
//

import SwiftUI

struct OpeningView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                NavigationLink(destination: BinaryToDecimal()) {
                    Text("BinaryDecimal")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 70)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                    NavigationLink(destination: DecimalToBinary()) {
                        Text("DecimalBinary")
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: 150, height: 70)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                            .navigationBarTitle("Converter")
                    }
                    
                    
                }
                
                NavigationLink(destination: DecimalToHexa()) {
                    Text("DecimalHexa")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 70)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                        .navigationBarTitle("Converter")
                }
                
                
                
                
                
                
            }
        }
        
        
    }
}
