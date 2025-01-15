//
//  MainViewModel.swift
//  GroceriesShopApp
//
//  Created by Pratama One on 15/01/25.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isSHowPassword: Bool = false
}
