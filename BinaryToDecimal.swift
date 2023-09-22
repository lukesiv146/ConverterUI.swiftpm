//
//  BinaryToDecimal.swift
//  ConverterUI
//
//  Created by Luke J. Sivulka on 9/18/23.
//

import SwiftUI

struct BinaryToDecimal: View {
    @State private var binaryInput = ""
    @State private var decimalOutput = ""
    
    var body: some View {
        VStack {
            Text("Binary to Decimal Converter")
                .font(.title)
            
            TextField("Enter binary number", text: $binaryInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                decimalOutput = convertBinaryToDecimal(binaryInput)
            }) {
                Text("Convert")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Decimal Result: \(decimalOutput)")
                .font(.headline)
                .padding()
        }
    }
    
    func convertBinaryToDecimal(_ binary: String) -> String {
        let binaryDigits = binary.reversed().map { Int(String($0)) ?? 0 }
        var decimalResult = 0
        var multiplier = 1
        
        for digit in binaryDigits {
            decimalResult += digit * multiplier
            multiplier *= 2
        }
        
        return "\(decimalResult)"
    }
}

