//
//  QuoteScreen.swift
//  Quotes
//
//  Created by Abdul Ahad Khan on 2021-10-06.
//

import SwiftUI

struct QuoteScreen: View {
    var body: some View {
       
        List {
            ForEach(Quote.dummyData, id: \.anime) { item in
                QuoteView(item: item)
            }
        }
    }
}

struct QuoteScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuoteScreen()
    }
}
