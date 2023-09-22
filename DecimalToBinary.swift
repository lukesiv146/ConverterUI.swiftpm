import SwiftUI

struct DecimalToBinary: View {
    @State private var decimalInput = ""
    @State private var binaryOutput = ""
    
    var body: some View {
        VStack {
            TextField("Enter a decimal number", text: $decimalInput)
                .padding()
                .keyboardType(.numberPad)
            
            Button("Convert to Binary") {
                if let decimal = Int(decimalInput) {
                    binaryOutput = decimalToBinary(decimal)
                } else {
                    binaryOutput = "Invalid input"
                }
            }
            
            Text("Binary: \(binaryOutput)")
                .padding()
        }
        .padding()
    }
    
    func decimalToBinary(_ decimal: Int) -> String {
        var binaryString = ""
        var number = decimal
        
        if number == 0 {
            return "0"
        }
        
        while number > 0 {
            let remainder = number % 2
            binaryString = String(remainder) + binaryString
            number /= 2
        }
        
        return binaryString
    }
}


