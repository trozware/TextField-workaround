//
//  ContentView.swift
//  Editing
//
//  Created by Sarah Reichelt on 21/1/2023.
//

import SwiftUI

struct ContentView: View {
  @State private var showBindingEdit = false
  @State private var showObservableEdit = false

  @State private var bindingEditText = "Binding edit text"
  @StateObject private var observedEditObject = EditObject()

  var body: some View {
    VStack {
      HStack {
        Button("Binding Edit") {
          showBindingEdit = true
        }
        Button("Observable Edit") {
          showObservableEdit = true
        }
      }

      Spacer()

      Text("Results:").font(.title3).bold()
      Text(bindingEditText)
      Text(observedEditObject.observedEditText)
    }
    .frame(width: 300, height: 400)
    .padding()
    .sheet(isPresented: $showBindingEdit) {
      BindingEdit(editText: $bindingEditText)
    }
    .sheet(isPresented: $showObservableEdit) {
      ObservedEdit(editObj: observedEditObject)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

class EditObject: ObservableObject {
  @Published var observedEditText = "Observed edit text"
}
