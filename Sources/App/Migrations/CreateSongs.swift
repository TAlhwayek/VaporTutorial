//
//  CreateSongs.swift
//  
//
//  Created by Tony Alhwayek on 1/29/24.
//

import Fluent

struct CreateSongs: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("songs")
            .id()
            .field("title", .string, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("songs").delete()
    }
}
