//
//  SettingsView.swift
//  StateManagement_iOSDevelopersMX_Demo
//
//  Created by Pedro Rojas on 05/03/21.
//

import SwiftUI

enum PreviewOption: String, CaseIterable, Identifiable {
    case always = "Always"
    case whenUnlocked = "When Unlocked"
    case never = "Never"

    var id: String {
        return self.rawValue
    }
}

struct SettingsView: View {
    @State private var username: String = ""
    @State private var isPrivate: Bool = true
    @State private var notificationsEnabled: Bool = false
    @State private var previewSelected: String = ""

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Username", text: $username)
                    Toggle(isOn: $isPrivate) {
                        Text("Private Account")
                    }
                }

                Section(header: Text("NOTIFICATIONS")) {
                    Toggle(isOn: $notificationsEnabled) {
                        Text("Enabled")
                    }
                    Picker(selection: $previewSelected, label: Text("Show Previews")) {
                        ForEach(PreviewOption.allCases) {
                            Text($0.rawValue)
                        }
                    }
                }

                Section(header: Text("ABOUT")) {
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.1")
                    }
                }

                Section {
                    Button(action: {
                        print("Perform an action here...")
                    }) {
                        Text("Reset All Settings")
                    }
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
