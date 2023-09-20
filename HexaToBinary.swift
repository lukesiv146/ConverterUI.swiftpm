//
//  HexaToBinary.swift
//  ConverterUI
//
//  Created by Luke J. Sivulka on 9/20/23.
//

import SwiftUI

struct HexaToBinary: View {
    @State private var hexInput = ""
    @State private var binaryOutput = ""
    
    var body: some View {
        VStack {
            Text("Hex to Binary Converter")
                .font(.title)
            
            TextField("Enter Hexadecimal", text: $hexInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Convert", action: convertHexToBinary)
                .padding()
            
            Text("Binary: \(binaryOutput)")
                .padding()
                .font(.headline)
        }
        .padding()
    }
    
    func convertHexToBinary() {
        if let intValue = Int(hexInput, radix: 16) {
            binaryOutput = String(intValue, radix: 2)
        } else {
            binaryOutput = "Invalid Hexadecimal"
        }
    }
}


