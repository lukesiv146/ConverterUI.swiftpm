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
            Text("Hexadecimal to Binary Converter")
                .font(.title)
            
            TextField("Enter Hexadecimal", text: $hexInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Convert") {
                convertHexToBinary()
            }
            .padding()
            
            Text("Binary: \(binaryOutput)")
                .padding()
        }
        .padding()
    }
    
    private func convertHexToBinary() {
        let hexString = hexInput.trimmingCharacters(in: .whitespacesAndNewlines)
        let hexCharacters = Array(hexString.uppercased())
        var binaryString = ""
        
        for hexChar in hexCharacters {
            guard let decimalValue = hexToDecimal(hexChar) else {
                binaryOutput = "Invalid Hexadecimal"
                return
            }
            
            var binaryValue = String(decimalValue, radix: 2)
            
            // Ensure each binary representation is 4 digits long
            while binaryValue.count < 4 {
                binaryValue = "0" + binaryValue
            }
            
            binaryString += binaryValue
        }
        
        binaryOutput = binaryString
    }
    
    private func hexToDecimal(_ hexChar: Character) -> Int? {
        let hexDigits = "0123456789ABCDEF"
        if let index = hexDigits.firstIndex(of: hexChar) {
            return hexDigits.distance(from: hexDigits.startIndex, to: index)
        }
        return nil
    }
}

