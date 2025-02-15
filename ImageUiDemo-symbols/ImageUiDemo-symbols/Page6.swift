//
// NavigationView, ItemDetail, ItemRow

import SwiftUI

struct Page6: View {
  var body: some View {
    NavigationView {
      List {
        ForEach(imageArray, id: \.self) { item in
          NavigationLink(
            destination: ItemDetail(item: item)
          )  {
            ItemRow(item: item)
          }
        }
      }
      .navigationTitle("My Shapes")
    }
  }
}

struct ItemDetail: View {
  var item: String
  var body: some View {
    VStack {
      Image(systemName: item)
        .resizable()
        .frame(width:100, height: 100)
      Text(item)
      Spacer()
    }
  }
}

struct ItemRow: View {
  var item: String
  var body: some View {
    HStack {
      Image(systemName: item)
        .resizable()
        .frame(width:100, height: 100)
      Text(item)
      Spacer()
    }
  }
}

#Preview {
    Page6()
}

// https://tisch.nyu.edu/about/directory
