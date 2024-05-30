//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Іван Джулинський on 12.03.2024.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedBarcode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedBarcode.isEmpty ? "Not Yet Scanned" : scannedBarcode
    }
    
    var statusTextColor: Color {
        scannedBarcode.isEmpty ? .red : .green
    }
}
