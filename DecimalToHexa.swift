//
//  BinaryToHexa.swift
//  ConverterUI
//
//  Created by Luke J. Sivulka on 9/20/23.
//

import SwiftUI

struct DecimalToHexa: View {
    @State private var decimalInput = ""
    @State private var hexadecimalOutput = ""
    
    var body: some View {
        VStack {
            Text("Decimal to Hexadecimal Converter")
                .font(.title)
                .padding()
            
            TextField("Enter a Decimal Number", text: $decimalInput)
                .padding()
                .keyboardType(.numberPad)
            
            Button("Convert", action: convertToHexadecimal)
                .padding()
            
            Text("Hexadecimal Result: \(hexadecimalOutput)")
                .padding()
        }
    }
    
    func convertToHexadecimal() {
        if let decimalValue = Int(decimalInput) {
            hexadecimalOutput = String(format: "%X", decimalValue)
        } else {
            hexadecimalOutput = "Invalid Input"
        }
    }
}


