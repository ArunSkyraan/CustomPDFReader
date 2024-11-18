//
//  CustomPDFReader.swift
//  CustomPDFReader
//
//  Created by Arun Skyraan on 18/11/24.
//

import Foundation
import SwiftUI
import PDFKit
 // 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

public struct PDFReaderView: UIViewRepresentable {
    let pdfURL: URL

    public init(pdfURL: URL) {
        self.pdfURL = pdfURL
    }

    public func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.autoScales = true
        pdfView.displayMode = .singlePageContinuous
        pdfView.displayDirection = .vertical

        if let document = PDFDocument(url: pdfURL) {
            pdfView.document = document
        }

        return pdfView
    }

    public func updateUIView(_ pdfView: PDFView, context: Context) {
        // Update PDFView if necessary
    }
}


