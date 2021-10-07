//
//  QuotesService.swift
//  Quotes
//
//  Created by Abdul Ahad Khan on 2021-10-06.
//

import Foundation

protocol QuotesService {
    func fetch() async throws -> [Quote]
}
