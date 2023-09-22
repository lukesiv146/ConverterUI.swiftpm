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
            TextField("Enter Binary", text: $binaryInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Convert to Hexadecimal") {
                hexadecimalOutput = convertBinaryToHex(binaryInput)
            }
            .padding()
            
            Text("Hexadecimal: \(hexadecimalOutput)")
                .padding()
        }
        .padding()
    }
    
    func convertBinaryToHex(_ binary: String) -> String {
        let binaryDigits = Array(binary)
        let reversedBinaryDigits = binaryDigits.reversed()
        var decimalValue = 0
        
        for (index, digitChar) in reversedBinaryDigits.enumerated() {
            if digitChar == "1" {
                decimalValue += 1 << index
            }
        }
        
        var hexString = ""
        var remainingValue = decimalValue
        
        while remainingValue > 0 {
            let remainder = remainingValue % 16
            let hexDigit = String(remainder, radix: 16).uppercased()
            hexString = hexDigit + hexString
            remainingValue /= 16
        }
        
        return hexString.isEmpty ? "0" : hexString
    }
}

