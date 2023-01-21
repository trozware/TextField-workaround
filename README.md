#  macOS TextField bug
## Demo and work-around

A macOS TextField with data passed as an @Binding property, moves the cursor to the end after every edit.

In this project, each button in ContentView opens a sheet with a TextField for editing.

One sheet edits a String passed as a Binding. This is the faulty one as typing or deleting any letter immediately moves the cursor to the end. Try editing the middle word - it’s a very frustrating process.

The second sheet passes an ObservableObject With a string property. In this case, the editing works as expected in any Mac app. It is possible to edit the middle word without constant re-selection.

Note: The Binding version works as expected on iOS so this is specifically a macOS bug.
