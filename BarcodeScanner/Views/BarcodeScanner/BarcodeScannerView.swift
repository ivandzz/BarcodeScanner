//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Іван Джулинський on 28.02.2024.
//

import SwiftUI

struct BarcodeScannerView: View {

    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedBarcode: $viewModel.scannedBarcode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
