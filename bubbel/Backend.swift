//
//  Backend.swift
//  bubbel
//
//  Created by Ivoine Strachan on 15/07/2023.
//

import SwiftUI

struct InCreateUser: Codable {
    var email: String
    var username: String
    var password: String
}

struct CreateUserError: Codable {
    var type: String
    var ierror: String?
}

struct ResCreateUser: Codable {
    var error: CreateUserError?
}

struct InAuthUser: Codable {
    var username: String
    var password: String
}

struct AuthUserError: Codable {
    var type: String
    var ierror: String?
    var dberror: CreateUserError?
}

struct ResAuthUser: Codable {
    var error: AuthUserError?
    var token: String?
    var username: String?
    var email: String?
}

struct InDeauthUser: Codable {
    var token: String
}


struct Backend: View {
    var body: some View {
        Text("David i added ur backend file happy?")
    }
}

struct Backend_Previews: PreviewProvider {
    static var previews: some View {
        Backend()
    }
}
