//
// NavigationView

import SwiftUI

struct Page5: View {
  var body: some View {
    NavigationView {
      List {
        ForEach(imageArray, id: \.self) { item in
          NavigationLink {
            VStack {
              Image(systemName: item)
                .resizable()
                .frame(width:100, height: 100)
              Text(item)
              Spacer()
            }
          } label: {
            HStack {
              Image(systemName: item)
                .resizable()
                .frame(width:100, height: 100)
              Text(item)
              Spacer()
            }
          }
        }
      }
    }
  }
}

#Preview {
    Page5()
}

// https://tisch.nyu.edu/about/directory
