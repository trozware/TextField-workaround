//
//  BindingEdit.swift
//  Editing
//
//  Created by Sarah Reichelt on 21/1/2023.
//

import SwiftUI

struct BindingEdit: View {
  @Environment(\.dismiss) var dismiss
  @Binding var editText: String

  var body: some View {
    VStack(spacing: 30) {
      Text("**Binding**: try editing in the middle of the text field. The cursor keeps jumping to the end.")
        .multilineTextAlignment(.center)

      TextField("", text: $editText)

      Button("OK") {
        dismiss()
      }
    }
    .frame(width: 200, height: 150)
    .padding()
  }
}

struct BindingEdit_Previews: PreviewProvider {
  static var previews: some View {
    BindingEdit(editText: .constant("edit text"))
  }
}
