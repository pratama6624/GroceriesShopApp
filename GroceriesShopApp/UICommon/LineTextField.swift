//
//  LineTextField.swift
//  GroceriesShopApp
//
//  Created by Pratama One on 15/01/25.
//

import SwiftUI

struct LineTextField: View {
    
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @Binding var txt: String
    @State var keyboardType: UIKeyboardType = .default
    
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            TextField(placeholder, text: $txt)
                .keyboardType(keyboardType)
                .autocorrectionDisabled(true)
                .frame(height: 40)
            
            Divider()
        }
    }
}

struct LineSecureField: View {
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    
    @Binding var txt: String
    @Binding var isShowPassword: Bool
    
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundStyle(Color.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if(isShowPassword) {
                TextField(placeholder, text: $txt)
                    .autocorrectionDisabled(true)
                    .modifier( ShowButton(isShow: $isShowPassword) )
                    .frame(height: 40)
            } else {
                SecureField(placeholder, text: $txt)
                    .modifier( ShowButton(isShow: $isShowPassword) )
                    .frame(height: 40)
            }
            
            Divider()
        }
    }
}

struct StatePreviewWrapper: View {
    @State private var text: String = ""
    
    var body: some View {
        LineTextField(txt: $text)
    }
}

#Preview {
    StatePreviewWrapper()
}
