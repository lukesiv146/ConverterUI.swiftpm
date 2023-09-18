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
                .padding()
            
            TextField("Enter Binary Number", text: $binaryInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Convert", action: convertBinaryToDecimal)
                .padding()
            
            Text("Decimal Result: \(decimalOutput)")
                .font(.title)
                .padding()
        }
    }
    
    func convertBinaryToDecimal() {
        if let decimalValue = Int(binaryInput, radix: 2) {
            decimalOutput = String(decimalValue)
        } else {
            decimalOutput = "Invalid Input"
        }
    }
}


