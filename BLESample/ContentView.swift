//
//  ContentView.swift
//  BLESample
//
//  Created by Greg Alton on 5/9/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var bluetoothViewModel = BluetoothViewModel()
    
    var body: some View {
        NavigationView {
            List(bluetoothViewModel.peripheralNames, id: \.self) { peripheral in
                Text(peripheral)
            }
        }
        .navigationTitle("Peripherals")
    }
}

#Preview {
    ContentView()
}
