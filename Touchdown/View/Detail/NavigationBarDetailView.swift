//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by AMAN SHARMA on 20/04/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
  //MARK: - PROPERTIES
  
  @EnvironmentObject var shop: Shop
  
  //MARK: - BODY
  var body: some View {
    HStack {
      Button(action: {
        withAnimation(.easeIn) {
          feedback.impactOccurred()
          shop.selectedProduct = nil
          shop.showingProduct = false
        }
      }, label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      })
      
      Spacer()
      
      Button(action: {}, label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      })
    } //: HSTACK
  }
}
  //MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarDetailView()
      .environmentObject(Shop())
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
