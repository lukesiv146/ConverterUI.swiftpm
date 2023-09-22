//
//  RodrigoView.swift
//  ConverterUI
//
//  Created by Luke J. Sivulka on 9/18/23.
//

import SwiftUI

struct HexaToDecimal: View {
    @State private var hexString: String = ""
    @State private var decimalResult: Int?
    
    var body: some View {
        VStack {
            TextField("Enter Hexadecimal", text: $hexString)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Convert") {
                decimalResult = hexToDecimal(hexString)
            }
            .padding()
            
            if let result = decimalResult {
                Text("Decimal: \(result)")
                    .padding()
            }
        }
    }
    
    func hexToDecimal(_ hex: String) -> Int? {
        let hexDigits = "0123456789ABCDEF"
        let hexCharacters = hex.uppercased()
        var decimalValue: Int = 0
        
        for char in hexCharacters {
            guard let digitValue = hexDigits.firstIndex(of: char)?.encodedOffset else {
                return nil // Invalid character in the hexadecimal string
            }
            decimalValue = decimalValue * 16 + digitValue
        }
        
        return decimalValue
    }
}

