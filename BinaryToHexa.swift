//
//  BinaryToHexa.swift
//  ConverterUI
//
//  Created by Luke J. Sivulka on 9/20/23.
//

import SwiftUI

struct BinaryToHexa: View {
    @State private var binaryInput = ""
    @State private var hexadecimalOutput = ""
    
    var body: some View {
        VStack {
            Text("Binary to Hexadecimal Converter")
                .font(.title)
                .padding()
            
            TextField("Enter binary number", text: $binaryInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Convert", action: convertBinaryToHexadecimal)
                .padding()
            
            Text("Hexadecimal: \(hexadecimalOutput)")
                .font(.headline)
                .padding()
        }
    }
    
    func convertBinaryToHexadecimal() {
        if let decimalValue = Int(binaryInput, radix: 2) {
            hexadecimalOutput = String(decimalValue, radix: 16)
        } else {
            hexadecimalOutput = "Invalid binary input"
        }
    }
}

