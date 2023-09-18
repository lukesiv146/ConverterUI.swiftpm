//
//  RodrigoView.swift
//  ConverterUI
//
//  Created by Luke J. Sivulka on 9/18/23.
//

import SwiftUI

struct RodrigoView: View {
    @State private var hexNumber = "0x1234"
    @State private var decNumber = 0
    var body: some View {
        VStack {
            TextField("Hexadecimal Number", text: $hexNumber)
                .padding()
            Button("Convert to Decimal") {
                decNumber = Int(hexNumber, radix: 16)!
            }
            .padding()
            Text("Decimal Number: \(decNumber)")
                .padding()
        }
    }
    
    
    
    struct RodrigoView_Previews: PreviewProvider {
        static var previews: some View {
            RodrigoView()
        }
    }
}
