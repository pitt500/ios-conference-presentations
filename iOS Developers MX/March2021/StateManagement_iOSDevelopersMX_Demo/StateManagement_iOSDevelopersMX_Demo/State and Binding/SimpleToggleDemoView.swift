//
//  ContentView.swift
//  StateManagement_iOSDevelopersMX_Demo
//
//  Created by Pedro Rojas on 05/03/21.
//

import SwiftUI

struct SimpleToggleDemoView: View {
    @State private var isNight = false

    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                MessageView(isNight: isNight)
                Switcher(isNight: $isNight)
            }
        }
    }
}

struct BackgroundView: View {
    let isNight: Bool

    var body: some View {
        Group {
            isNight ? Color.black : Color.white
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Switcher: View {
    @Binding var isNight: Bool

    var body: some View {
        Toggle(isOn: $isNight) {
            Text("Is night?")
                .foregroundColor(
                    isNight ? Color.white : Color.black
                )
        }
        .frame(width: 130)
    }
}

struct MessageView: View {
    let isNight: Bool

    var body: some View {
        Text("Hello iOS Developers!")
            .font(.largeTitle)
            .padding()
            .foregroundColor(isNight ? Color.white : Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleToggleDemoView()
    }
}
