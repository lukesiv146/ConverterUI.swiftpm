import SwiftUI

struct DecimalToBinary: View {
    @State private var decimalNumber = ""
    
    var binaryNumber: String {
        if let number = Int(decimalNumber) {
            return String(number, radix: 2)
        } else {
            return "Invalid Input"
        }
    }
    
    var body: some View {
        VStack {
            Text("Decimal to Binary ")
                .font(.title)
                .padding()
            
            TextField("Enter a Decimal Number", text: $decimalNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Text("Binary: \(binaryNumber)")
                .padding()
        }
    }
}

