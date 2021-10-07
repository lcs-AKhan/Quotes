//
//  QuoteScreen.swift
//  Quotes
//
//  Created by Abdul Ahad Khan on 2021-10-06.
//

import SwiftUI

struct QuoteScreen: View {
    
    @StateObject private var vm = QuotesViewModelImpl(service: QuotesServiceImpl())
    
    var body: some View {
        Group {
            if vm.quotes.isEmpty {
                LoadingView(text: "Fetching Quotes")
            } else {
                List {
                    ForEach(vm.quotes, id: \.anime) { item in
                        QuoteView(item: item)
                    }
                }
            }
        } .task {
            await vm.getRandomQuotes()
        }
    }
}

struct QuoteScreen_Previews: PreviewProvider {
    static var previews: some View {
        QuoteScreen()
    }
}
