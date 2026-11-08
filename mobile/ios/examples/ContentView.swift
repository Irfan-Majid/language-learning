// SwiftUI - ContentView.swift
import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack(spacing: 16) {
            Text("Hello from iOS!")
                .font(.title)
            Text("Count: \(count)")
            Button("Increment") { count += 1 }
        }
        .padding()
    }
}
