//
//  RodrigoView.swift
//  ConverterUI
//
//  Created by Luke J. Sivulka on 9/18/23.
//

import SwiftUI

struct RodrigoView: View {
   @State private var hexNumber = ""
        @State private var decimalNumber = 0

        var body: some View {
            VStack {
                TextField("Enter hexadecimal number", text: $hexNumber)
                    .keyboardType(.decimalPad)
                    .padding()

                Button("Convert") {
                    if let decimal = Int(hexNumber, radix: 16) {
                        decimalNumber = decimal
                    } else {
                        decimalNumber = 0
                    }
                }
                .padding()

                Text("Decimal number: \(decimalNumber)")
                    .font(.largeTitle)
                    .padding()
        }
    }
    
    
    
    struct RodrigoView_Previews: PreviewProvider {
        static var previews: some View {
            RodrigoView()
        }
    }
}
