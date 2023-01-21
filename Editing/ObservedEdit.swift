//
//  ObservedEdit.swift
//  Editing
//
//  Created by Sarah Reichelt on 21/1/2023.
//

import SwiftUI

struct ObservedEdit: View {
  @Environment(\.dismiss) var dismiss
  @ObservedObject var editObj: EditObject
  
  var body: some View {
    VStack(spacing: 30) {
      Text("**Observable**: try editing in the middle of the text field. It works with this form of data passing.")
        .multilineTextAlignment(.center)

      TextField("", text: $editObj.observedEditText)

      Button("OK") {
        dismiss()
      }
    }
    .frame(width: 200, height: 150)
    .padding()
  }
}

struct ObservedEdit_Previews: PreviewProvider {
  static var previews: some View {
    ObservedEdit(editObj: EditObject())
  }
}
