let bubbelBathDev = "https://api.joinbubbel.com"
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let bubbelCodegenOut = try BubbelCodegenOut(json)

import Foundation

// MARK: - BubbelCodegenOut
struct BubbelCodegenOut: Codable {
    let t0: InCreateUser?
    let t1: ResCreateUser?
    let t10: InSetUserProfile?
    let t11: ResSetUserProfile?
    let t12: InGetUserProfile?
    let t13: ResGetUserProfile?
    let t14: InDeleteUser?
    let t15: ResDeleteUser?
    let t16: InCreateClub?
    let t17: ResCreateClub?
    let t18: InGetClubProfile?
    let t19: ResGetClubProfile?
    let t2: InAuthUser?
    let t20: InSetClubProfile?
    let t21: ResSetClubProfile?
    let t22: InDeleteClub?
    let t23: ResDeleteClub?
    let t24: InGetUserProfileWithUsername?
    let t25: ResGetUserProfileWithUsername?
    let t26: InAddFriendConnection?
    let t27: ResAddFriendConnection?
    let t28: InGetFriendConnections?
    let t29: ResGetFriendConnections?
    let t3: ResAuthUser?
    let t30: InRemoveFriend?
    let t31: ResRemoveFriend?
    let t32: InJoinClub?
    let t33: ResJoinClub?
    let t34: InUnjoinClub?
    let t35: ResUnjoinClub?
    let t36: InGetClubMembers?
    let t37: ResGetClubMembers?
    let t38: InGetUserClubs?
    let t39: ResGetUserClubs?
    let t4: InDeauthUser?
    let t40: InRegexSearchClubs?
    let t41: ResRegexSearchClubs?
    let t42: InRegexSearchUsers?
    let t43: ResRegexSearchUsers?
    let t44: InGetRandomClubs?
    let t45: ResGetRandomClubs?
    let t46: InCheckToken?
    let t47: ResCheckToken?
    let t48: InUnsafeAddFile?
    let t49: ResUnsafeAddFile?
    let t5: ResDeauthUser?
    let t50: InGetDataChannelChunk?
    let t51: ResGetDataChannelChunk?
    let t52: InGetClubProfileWithName?
    let t53: ResGetClubProfileWithName?
    let t54: InGetRandomUsers?
    let t55: ResGetRandomUsers?
    let t56: InUsernameToID?
    let t57: ResUsernameToID?
    let t58: InCreateMessageRoom?
    let t59: ResCreateMessageRoom?
    let t6: InVerifyAccount?
    let t60: InGetMessageRoom?
    let t61: ResGetMessageRoom?
    let t62: InJoinMessageRoom?
    let t63: ResJoinMessageRoom?
    let t64: InGetClubMessageRooms?
    let t65: ResGetClubMessageRooms?
    let t66: InGetMessageRoomMembers?
    let t67: ResGetMessageRoomMembers?
    let t68: InUploadBase64?
    let t69: ResUploadBase64?
    let t7: ResVerifyAccount?
    let t70: DataChannelInitRequest?
    let t71: DataChannelInitResponse?
    let t72: DataChannelRequest?
    let t73: DataChannelResponse?
    let t8: InSendVerify?
    let t9: ResSendVerify?
}

// MARK: BubbelCodegenOut convenience initializers and mutators

extension BubbelCodegenOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(BubbelCodegenOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        t0: InCreateUser?? = nil,
        t1: ResCreateUser?? = nil,
        t10: InSetUserProfile?? = nil,
        t11: ResSetUserProfile?? = nil,
        t12: InGetUserProfile?? = nil,
        t13: ResGetUserProfile?? = nil,
        t14: InDeleteUser?? = nil,
        t15: ResDeleteUser?? = nil,
        t16: InCreateClub?? = nil,
        t17: ResCreateClub?? = nil,
        t18: InGetClubProfile?? = nil,
        t19: ResGetClubProfile?? = nil,
        t2: InAuthUser?? = nil,
        t20: InSetClubProfile?? = nil,
        t21: ResSetClubProfile?? = nil,
        t22: InDeleteClub?? = nil,
        t23: ResDeleteClub?? = nil,
        t24: InGetUserProfileWithUsername?? = nil,
        t25: ResGetUserProfileWithUsername?? = nil,
        t26: InAddFriendConnection?? = nil,
        t27: ResAddFriendConnection?? = nil,
        t28: InGetFriendConnections?? = nil,
        t29: ResGetFriendConnections?? = nil,
        t3: ResAuthUser?? = nil,
        t30: InRemoveFriend?? = nil,
        t31: ResRemoveFriend?? = nil,
        t32: InJoinClub?? = nil,
        t33: ResJoinClub?? = nil,
        t34: InUnjoinClub?? = nil,
        t35: ResUnjoinClub?? = nil,
        t36: InGetClubMembers?? = nil,
        t37: ResGetClubMembers?? = nil,
        t38: InGetUserClubs?? = nil,
        t39: ResGetUserClubs?? = nil,
        t4: InDeauthUser?? = nil,
        t40: InRegexSearchClubs?? = nil,
        t41: ResRegexSearchClubs?? = nil,
        t42: InRegexSearchUsers?? = nil,
        t43: ResRegexSearchUsers?? = nil,
        t44: InGetRandomClubs?? = nil,
        t45: ResGetRandomClubs?? = nil,
        t46: InCheckToken?? = nil,
        t47: ResCheckToken?? = nil,
        t48: InUnsafeAddFile?? = nil,
        t49: ResUnsafeAddFile?? = nil,
        t5: ResDeauthUser?? = nil,
        t50: InGetDataChannelChunk?? = nil,
        t51: ResGetDataChannelChunk?? = nil,
        t52: InGetClubProfileWithName?? = nil,
        t53: ResGetClubProfileWithName?? = nil,
        t54: InGetRandomUsers?? = nil,
        t55: ResGetRandomUsers?? = nil,
        t56: InUsernameToID?? = nil,
        t57: ResUsernameToID?? = nil,
        t58: InCreateMessageRoom?? = nil,
        t59: ResCreateMessageRoom?? = nil,
        t6: InVerifyAccount?? = nil,
        t60: InGetMessageRoom?? = nil,
        t61: ResGetMessageRoom?? = nil,
        t62: InJoinMessageRoom?? = nil,
        t63: ResJoinMessageRoom?? = nil,
        t64: InGetClubMessageRooms?? = nil,
        t65: ResGetClubMessageRooms?? = nil,
        t66: InGetMessageRoomMembers?? = nil,
        t67: ResGetMessageRoomMembers?? = nil,
        t68: InUploadBase64?? = nil,
        t69: ResUploadBase64?? = nil,
        t7: ResVerifyAccount?? = nil,
        t70: DataChannelInitRequest?? = nil,
        t71: DataChannelInitResponse?? = nil,
        t72: DataChannelRequest?? = nil,
        t73: DataChannelResponse?? = nil,
        t8: InSendVerify?? = nil,
        t9: ResSendVerify?? = nil
    ) -> BubbelCodegenOut {
        return BubbelCodegenOut(
            t0: t0 ?? self.t0,
            t1: t1 ?? self.t1,
            t10: t10 ?? self.t10,
            t11: t11 ?? self.t11,
            t12: t12 ?? self.t12,
            t13: t13 ?? self.t13,
            t14: t14 ?? self.t14,
            t15: t15 ?? self.t15,
            t16: t16 ?? self.t16,
            t17: t17 ?? self.t17,
            t18: t18 ?? self.t18,
            t19: t19 ?? self.t19,
            t2: t2 ?? self.t2,
            t20: t20 ?? self.t20,
            t21: t21 ?? self.t21,
            t22: t22 ?? self.t22,
            t23: t23 ?? self.t23,
            t24: t24 ?? self.t24,
            t25: t25 ?? self.t25,
            t26: t26 ?? self.t26,
            t27: t27 ?? self.t27,
            t28: t28 ?? self.t28,
            t29: t29 ?? self.t29,
            t3: t3 ?? self.t3,
            t30: t30 ?? self.t30,
            t31: t31 ?? self.t31,
            t32: t32 ?? self.t32,
            t33: t33 ?? self.t33,
            t34: t34 ?? self.t34,
            t35: t35 ?? self.t35,
            t36: t36 ?? self.t36,
            t37: t37 ?? self.t37,
            t38: t38 ?? self.t38,
            t39: t39 ?? self.t39,
            t4: t4 ?? self.t4,
            t40: t40 ?? self.t40,
            t41: t41 ?? self.t41,
            t42: t42 ?? self.t42,
            t43: t43 ?? self.t43,
            t44: t44 ?? self.t44,
            t45: t45 ?? self.t45,
            t46: t46 ?? self.t46,
            t47: t47 ?? self.t47,
            t48: t48 ?? self.t48,
            t49: t49 ?? self.t49,
            t5: t5 ?? self.t5,
            t50: t50 ?? self.t50,
            t51: t51 ?? self.t51,
            t52: t52 ?? self.t52,
            t53: t53 ?? self.t53,
            t54: t54 ?? self.t54,
            t55: t55 ?? self.t55,
            t56: t56 ?? self.t56,
            t57: t57 ?? self.t57,
            t58: t58 ?? self.t58,
            t59: t59 ?? self.t59,
            t6: t6 ?? self.t6,
            t60: t60 ?? self.t60,
            t61: t61 ?? self.t61,
            t62: t62 ?? self.t62,
            t63: t63 ?? self.t63,
            t64: t64 ?? self.t64,
            t65: t65 ?? self.t65,
            t66: t66 ?? self.t66,
            t67: t67 ?? self.t67,
            t68: t68 ?? self.t68,
            t69: t69 ?? self.t69,
            t7: t7 ?? self.t7,
            t70: t70 ?? self.t70,
            t71: t71 ?? self.t71,
            t72: t72 ?? self.t72,
            t73: t73 ?? self.t73,
            t8: t8 ?? self.t8,
            t9: t9 ?? self.t9
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InCreateUser
struct InCreateUser: Codable {
    let email, password, username: String
}

// MARK: InCreateUser convenience initializers and mutators

extension InCreateUser {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InCreateUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        email: String? = nil,
        password: String? = nil,
        username: String? = nil
    ) -> InCreateUser {
        return InCreateUser(
            email: email ?? self.email,
            password: password ?? self.password,
            username: username ?? self.username
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResCreateUser
struct ResCreateUser: Codable {
    let error: CreateUserError?
    let res: CreateUserOut?
}

// MARK: ResCreateUser convenience initializers and mutators

extension ResCreateUser {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResCreateUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: CreateUserError?? = nil,
        res: CreateUserOut?? = nil
    ) -> ResCreateUser {
        return ResCreateUser(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

/// Email is not valid by backend standards.
///
/// Username is not valid by backend standards.
///
/// Password is not valid by backend standards.
///
/// Got an error from a cryptography function. This error should never occur.
///
/// Email or Username already taken.
// MARK: - CreateUserError
struct CreateUserError: Codable {
    let type: PurpleType
    let ierror: String?
}

// MARK: CreateUserError convenience initializers and mutators

extension CreateUserError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CreateUserError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: PurpleType? = nil,
        ierror: String?? = nil
    ) -> CreateUserError {
        return CreateUserError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum PurpleType: String, Codable {
    case emailOrUsernameTaken = "EmailOrUsernameTaken"
    case invalidEmail = "InvalidEmail"
    case invalidPassword = "InvalidPassword"
    case invalidPasswordCryto = "InvalidPasswordCryto"
    case invalidUsername = "InvalidUsername"
    case typeInternal = "Internal"
}

// MARK: - CreateUserOut
struct CreateUserOut: Codable {
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
    }
}

// MARK: CreateUserOut convenience initializers and mutators

extension CreateUserOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CreateUserOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        userID: Int? = nil
    ) -> CreateUserOut {
        return CreateUserOut(
            userID: userID ?? self.userID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InSetUserProfile
struct InSetUserProfile: Codable {
    let banner, description, displayName, name: String?
    let pfp: String?
    let token: String

    enum CodingKeys: String, CodingKey {
        case banner, description
        case displayName = "display_name"
        case name, pfp, token
    }
}

// MARK: InSetUserProfile convenience initializers and mutators

extension InSetUserProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InSetUserProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        banner: String?? = nil,
        description: String?? = nil,
        displayName: String?? = nil,
        name: String?? = nil,
        pfp: String?? = nil,
        token: String? = nil
    ) -> InSetUserProfile {
        return InSetUserProfile(
            banner: banner ?? self.banner,
            description: description ?? self.description,
            displayName: displayName ?? self.displayName,
            name: name ?? self.name,
            pfp: pfp ?? self.pfp,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResSetUserProfile
struct ResSetUserProfile: Codable {
    let error: SetUserProfileError?
    let res: JSONNull?
}

// MARK: ResSetUserProfile convenience initializers and mutators

extension ResSetUserProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResSetUserProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: SetUserProfileError?? = nil,
        res: JSONNull?? = nil
    ) -> ResSetUserProfile {
        return ResSetUserProfile(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - SetUserProfileError
struct SetUserProfileError: Codable {
    let type: FluffyType
    let ierror: String?
}

// MARK: SetUserProfileError convenience initializers and mutators

extension SetUserProfileError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SetUserProfileError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: FluffyType? = nil,
        ierror: String?? = nil
    ) -> SetUserProfileError {
        return SetUserProfileError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum FluffyType: String, Codable {
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - InGetUserProfile
struct InGetUserProfile: Codable {
    let token: String?
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case token
        case userID = "user_id"
    }
}

// MARK: InGetUserProfile convenience initializers and mutators

extension InGetUserProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetUserProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        token: String?? = nil,
        userID: Int? = nil
    ) -> InGetUserProfile {
        return InGetUserProfile(
            token: token ?? self.token,
            userID: userID ?? self.userID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetUserProfile
struct ResGetUserProfile: Codable {
    let error: GetUserProfileError?
    let res: GetUserProfileOut?
}

// MARK: ResGetUserProfile convenience initializers and mutators

extension ResGetUserProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetUserProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetUserProfileError?? = nil,
        res: GetUserProfileOut?? = nil
    ) -> ResGetUserProfile {
        return ResGetUserProfile(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetUserProfileError
struct GetUserProfileError: Codable {
    let type: TentacledType
    let ierror: String?
}

// MARK: GetUserProfileError convenience initializers and mutators

extension GetUserProfileError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetUserProfileError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: TentacledType? = nil,
        ierror: String?? = nil
    ) -> GetUserProfileError {
        return GetUserProfileError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum TentacledType: String, Codable {
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
    case userNotFound = "UserNotFound"
}

// MARK: - GetUserProfileOut
struct GetUserProfileOut: Codable {
    let banner, description, displayName, name: String?
    let pfp: String?

    enum CodingKeys: String, CodingKey {
        case banner, description
        case displayName = "display_name"
        case name, pfp
    }
}

// MARK: GetUserProfileOut convenience initializers and mutators

extension GetUserProfileOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetUserProfileOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        banner: String?? = nil,
        description: String?? = nil,
        displayName: String?? = nil,
        name: String?? = nil,
        pfp: String?? = nil
    ) -> GetUserProfileOut {
        return GetUserProfileOut(
            banner: banner ?? self.banner,
            description: description ?? self.description,
            displayName: displayName ?? self.displayName,
            name: name ?? self.name,
            pfp: pfp ?? self.pfp
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InDeleteUser
struct InDeleteUser: Codable {
    let token: String
}

// MARK: InDeleteUser convenience initializers and mutators

extension InDeleteUser {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InDeleteUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        token: String? = nil
    ) -> InDeleteUser {
        return InDeleteUser(
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResDeleteUser
struct ResDeleteUser: Codable {
    let error: DeleteUserError?
    let res: JSONNull?
}

// MARK: ResDeleteUser convenience initializers and mutators

extension ResDeleteUser {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResDeleteUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: DeleteUserError?? = nil,
        res: JSONNull?? = nil
    ) -> ResDeleteUser {
        return ResDeleteUser(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - DeleteUserError
struct DeleteUserError: Codable {
    let type: FluffyType
    let ierror: String?
}

// MARK: DeleteUserError convenience initializers and mutators

extension DeleteUserError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DeleteUserError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: FluffyType? = nil,
        ierror: String?? = nil
    ) -> DeleteUserError {
        return DeleteUserError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InCreateClub
struct InCreateClub: Codable {
    let name, token: String
}

// MARK: InCreateClub convenience initializers and mutators

extension InCreateClub {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InCreateClub.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        name: String? = nil,
        token: String? = nil
    ) -> InCreateClub {
        return InCreateClub(
            name: name ?? self.name,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResCreateClub
struct ResCreateClub: Codable {
    let error: CreateClubError?
    let res: CreateClubOut?
}

// MARK: ResCreateClub convenience initializers and mutators

extension ResCreateClub {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResCreateClub.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: CreateClubError?? = nil,
        res: CreateClubOut?? = nil
    ) -> ResCreateClub {
        return ResCreateClub(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - CreateClubError
struct CreateClubError: Codable {
    let type: StickyType
    let ierror: String?
}

// MARK: CreateClubError convenience initializers and mutators

extension CreateClubError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CreateClubError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: StickyType? = nil,
        ierror: String?? = nil
    ) -> CreateClubError {
        return CreateClubError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum StickyType: String, Codable {
    case clubAlreadyExists = "ClubAlreadyExists"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - CreateClubOut
struct CreateClubOut: Codable {
    let clubID: Int

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
    }
}

// MARK: CreateClubOut convenience initializers and mutators

extension CreateClubOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CreateClubOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil
    ) -> CreateClubOut {
        return CreateClubOut(
            clubID: clubID ?? self.clubID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InGetClubProfile
struct InGetClubProfile: Codable {
    let clubID: Int
    let token: String?

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
        case token
    }
}

// MARK: InGetClubProfile convenience initializers and mutators

extension InGetClubProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetClubProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil,
        token: String?? = nil
    ) -> InGetClubProfile {
        return InGetClubProfile(
            clubID: clubID ?? self.clubID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetClubProfile
struct ResGetClubProfile: Codable {
    let error: GetClubProfileError?
    let res: GetClubProfileOut?
}

// MARK: ResGetClubProfile convenience initializers and mutators

extension ResGetClubProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetClubProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetClubProfileError?? = nil,
        res: GetClubProfileOut?? = nil
    ) -> ResGetClubProfile {
        return ResGetClubProfile(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetClubProfileError
struct GetClubProfileError: Codable {
    let type: IndigoType
    let ierror: String?
}

// MARK: GetClubProfileError convenience initializers and mutators

extension GetClubProfileError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetClubProfileError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: IndigoType? = nil,
        ierror: String?? = nil
    ) -> GetClubProfileError {
        return GetClubProfileError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum IndigoType: String, Codable {
    case clubNotFound = "ClubNotFound"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - GetClubProfileOut
struct GetClubProfileOut: Codable {
    let banner: String?
    let dcID: Int
    let description, displayName: String?
    let isMember: Bool?
    let name: String
    let owner: Int
    let pfp: String?

    enum CodingKeys: String, CodingKey {
        case banner
        case dcID = "dc_id"
        case description
        case displayName = "display_name"
        case isMember = "is_member"
        case name, owner, pfp
    }
}

// MARK: GetClubProfileOut convenience initializers and mutators

extension GetClubProfileOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetClubProfileOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        banner: String?? = nil,
        dcID: Int? = nil,
        description: String?? = nil,
        displayName: String?? = nil,
        isMember: Bool?? = nil,
        name: String? = nil,
        owner: Int? = nil,
        pfp: String?? = nil
    ) -> GetClubProfileOut {
        return GetClubProfileOut(
            banner: banner ?? self.banner,
            dcID: dcID ?? self.dcID,
            description: description ?? self.description,
            displayName: displayName ?? self.displayName,
            isMember: isMember ?? self.isMember,
            name: name ?? self.name,
            owner: owner ?? self.owner,
            pfp: pfp ?? self.pfp
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InAuthUser
struct InAuthUser: Codable {
    let password, username: String
}

// MARK: InAuthUser convenience initializers and mutators

extension InAuthUser {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InAuthUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        password: String? = nil,
        username: String? = nil
    ) -> InAuthUser {
        return InAuthUser(
            password: password ?? self.password,
            username: username ?? self.username
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InSetClubProfile
struct InSetClubProfile: Codable {
    let banner: String?
    let clubID: Int
    let dcID: Int?
    let description, displayName, name: String?
    let owner: Int?
    let pfp: String?
    let token: String

    enum CodingKeys: String, CodingKey {
        case banner
        case clubID = "club_id"
        case dcID = "dc_id"
        case description
        case displayName = "display_name"
        case name, owner, pfp, token
    }
}

// MARK: InSetClubProfile convenience initializers and mutators

extension InSetClubProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InSetClubProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        banner: String?? = nil,
        clubID: Int? = nil,
        dcID: Int?? = nil,
        description: String?? = nil,
        displayName: String?? = nil,
        name: String?? = nil,
        owner: Int?? = nil,
        pfp: String?? = nil,
        token: String? = nil
    ) -> InSetClubProfile {
        return InSetClubProfile(
            banner: banner ?? self.banner,
            clubID: clubID ?? self.clubID,
            dcID: dcID ?? self.dcID,
            description: description ?? self.description,
            displayName: displayName ?? self.displayName,
            name: name ?? self.name,
            owner: owner ?? self.owner,
            pfp: pfp ?? self.pfp,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResSetClubProfile
struct ResSetClubProfile: Codable {
    let error: SetClubProfileError?
    let res: [String: JSONAny]?
}

// MARK: ResSetClubProfile convenience initializers and mutators

extension ResSetClubProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResSetClubProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: SetClubProfileError?? = nil,
        res: [String: JSONAny]?? = nil
    ) -> ResSetClubProfile {
        return ResSetClubProfile(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

/// The user is not the owner and therefore is not authorized.
// MARK: - SetClubProfileError
struct SetClubProfileError: Codable {
    let type: IndecentType
    let ierror: String?
}

// MARK: SetClubProfileError convenience initializers and mutators

extension SetClubProfileError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SetClubProfileError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: IndecentType? = nil,
        ierror: String?? = nil
    ) -> SetClubProfileError {
        return SetClubProfileError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum IndecentType: String, Codable {
    case clubNotFound = "ClubNotFound"
    case noAuth = "NoAuth"
    case noAuthOwner = "NoAuthOwner"
    case settingDCNotSupportedYet = "SettingDCNotSupportedYet"
    case settingNameNotSupportedYet = "SettingNameNotSupportedYet"
    case settingOwnerNotSupportedYet = "SettingOwnerNotSupportedYet"
    case typeInternal = "Internal"
}

// MARK: - InDeleteClub
struct InDeleteClub: Codable {
    let clubID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
        case token
    }
}

// MARK: InDeleteClub convenience initializers and mutators

extension InDeleteClub {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InDeleteClub.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil,
        token: String? = nil
    ) -> InDeleteClub {
        return InDeleteClub(
            clubID: clubID ?? self.clubID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResDeleteClub
struct ResDeleteClub: Codable {
    let error: DeleteClubError?
    let res: JSONNull?
}

// MARK: ResDeleteClub convenience initializers and mutators

extension ResDeleteClub {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResDeleteClub.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: DeleteClubError?? = nil,
        res: JSONNull?? = nil
    ) -> ResDeleteClub {
        return ResDeleteClub(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

/// The user is not the owner and therefore is not authorized.
// MARK: - DeleteClubError
struct DeleteClubError: Codable {
    let type: HilariousType
    let ierror: String?
}

// MARK: DeleteClubError convenience initializers and mutators

extension DeleteClubError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DeleteClubError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: HilariousType? = nil,
        ierror: String?? = nil
    ) -> DeleteClubError {
        return DeleteClubError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum HilariousType: String, Codable {
    case clubNotFound = "ClubNotFound"
    case noAuth = "NoAuth"
    case noAuthOwner = "NoAuthOwner"
    case typeInternal = "Internal"
}

// MARK: - InGetUserProfileWithUsername
struct InGetUserProfileWithUsername: Codable {
    let token: String?
    let username: String
}

// MARK: InGetUserProfileWithUsername convenience initializers and mutators

extension InGetUserProfileWithUsername {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetUserProfileWithUsername.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        token: String?? = nil,
        username: String? = nil
    ) -> InGetUserProfileWithUsername {
        return InGetUserProfileWithUsername(
            token: token ?? self.token,
            username: username ?? self.username
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetUserProfileWithUsername
struct ResGetUserProfileWithUsername: Codable {
    let error: GetUserProfileWithUsernameError?
    let res: GetUserProfileWithUsernameOut?
}

// MARK: ResGetUserProfileWithUsername convenience initializers and mutators

extension ResGetUserProfileWithUsername {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetUserProfileWithUsername.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetUserProfileWithUsernameError?? = nil,
        res: GetUserProfileWithUsernameOut?? = nil
    ) -> ResGetUserProfileWithUsername {
        return ResGetUserProfileWithUsername(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetUserProfileWithUsernameError
struct GetUserProfileWithUsernameError: Codable {
    let type: TentacledType
    let ierror: String?
}

// MARK: GetUserProfileWithUsernameError convenience initializers and mutators

extension GetUserProfileWithUsernameError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetUserProfileWithUsernameError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: TentacledType? = nil,
        ierror: String?? = nil
    ) -> GetUserProfileWithUsernameError {
        return GetUserProfileWithUsernameError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetUserProfileWithUsernameOut
struct GetUserProfileWithUsernameOut: Codable {
    let banner, description, displayName, name: String?
    let pfp: String?

    enum CodingKeys: String, CodingKey {
        case banner, description
        case displayName = "display_name"
        case name, pfp
    }
}

// MARK: GetUserProfileWithUsernameOut convenience initializers and mutators

extension GetUserProfileWithUsernameOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetUserProfileWithUsernameOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        banner: String?? = nil,
        description: String?? = nil,
        displayName: String?? = nil,
        name: String?? = nil,
        pfp: String?? = nil
    ) -> GetUserProfileWithUsernameOut {
        return GetUserProfileWithUsernameOut(
            banner: banner ?? self.banner,
            description: description ?? self.description,
            displayName: displayName ?? self.displayName,
            name: name ?? self.name,
            pfp: pfp ?? self.pfp
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InAddFriendConnection
struct InAddFriendConnection: Codable {
    let receiverID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case receiverID = "receiver_id"
        case token
    }
}

// MARK: InAddFriendConnection convenience initializers and mutators

extension InAddFriendConnection {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InAddFriendConnection.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        receiverID: Int? = nil,
        token: String? = nil
    ) -> InAddFriendConnection {
        return InAddFriendConnection(
            receiverID: receiverID ?? self.receiverID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResAddFriendConnection
struct ResAddFriendConnection: Codable {
    let error: AddFriendConnectionError?
    let res: [String: JSONAny]?
}

// MARK: ResAddFriendConnection convenience initializers and mutators

extension ResAddFriendConnection {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResAddFriendConnection.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: AddFriendConnectionError?? = nil,
        res: [String: JSONAny]?? = nil
    ) -> ResAddFriendConnection {
        return ResAddFriendConnection(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - AddFriendConnectionError
struct AddFriendConnectionError: Codable {
    let type: AmbitiousType
    let ierror: String?
}

// MARK: AddFriendConnectionError convenience initializers and mutators

extension AddFriendConnectionError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AddFriendConnectionError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: AmbitiousType? = nil,
        ierror: String?? = nil
    ) -> AddFriendConnectionError {
        return AddFriendConnectionError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum AmbitiousType: String, Codable {
    case alreadyConnected = "AlreadyConnected"
    case cannotAddSelf = "CannotAddSelf"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - InGetFriendConnections
struct InGetFriendConnections: Codable {
    let token: String
}

// MARK: InGetFriendConnections convenience initializers and mutators

extension InGetFriendConnections {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetFriendConnections.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        token: String? = nil
    ) -> InGetFriendConnections {
        return InGetFriendConnections(
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetFriendConnections
struct ResGetFriendConnections: Codable {
    let error: GetFriendConnectionsError?
    let res: GetFriendConnectionsOut?
}

// MARK: ResGetFriendConnections convenience initializers and mutators

extension ResGetFriendConnections {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetFriendConnections.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetFriendConnectionsError?? = nil,
        res: GetFriendConnectionsOut?? = nil
    ) -> ResGetFriendConnections {
        return ResGetFriendConnections(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetFriendConnectionsError
struct GetFriendConnectionsError: Codable {
    let type: FluffyType
    let ierror: String?
}

// MARK: GetFriendConnectionsError convenience initializers and mutators

extension GetFriendConnectionsError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetFriendConnectionsError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: FluffyType? = nil,
        ierror: String?? = nil
    ) -> GetFriendConnectionsError {
        return GetFriendConnectionsError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetFriendConnectionsOut
struct GetFriendConnectionsOut: Codable {
    let friendConnections: [String: FriendStatus]

    enum CodingKeys: String, CodingKey {
        case friendConnections = "friend_connections"
    }
}

// MARK: GetFriendConnectionsOut convenience initializers and mutators

extension GetFriendConnectionsOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetFriendConnectionsOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        friendConnections: [String: FriendStatus]? = nil
    ) -> GetFriendConnectionsOut {
        return GetFriendConnectionsOut(
            friendConnections: friendConnections ?? self.friendConnections
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum FriendStatus: String, Codable {
    case full = "Full"
    case recievedPending = "RecievedPending"
    case sentPending = "SentPending"
}

// MARK: - ResAuthUser
struct ResAuthUser: Codable {
    let error: AuthUserError?
    let res: AuthUserOut?
}

// MARK: ResAuthUser convenience initializers and mutators

extension ResAuthUser {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResAuthUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: AuthUserError?? = nil,
        res: AuthUserOut?? = nil
    ) -> ResAuthUser {
        return ResAuthUser(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

/// Got an error from a cryptography function. This error should never occur.
// MARK: - AuthUserError
struct AuthUserError: Codable {
    let type: CunningType
    let userID: Int?
    let ierror: String?

    enum CodingKeys: String, CodingKey {
        case type
        case userID = "user_id"
        case ierror
    }
}

// MARK: AuthUserError convenience initializers and mutators

extension AuthUserError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AuthUserError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: CunningType? = nil,
        userID: Int?? = nil,
        ierror: String?? = nil
    ) -> AuthUserError {
        return AuthUserError(
            type: type ?? self.type,
            userID: userID ?? self.userID,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum CunningType: String, Codable {
    case invalidCredentials = "InvalidCredentials"
    case invalidPasswordCryto = "InvalidPasswordCryto"
    case typeInternal = "Internal"
    case userNotFound = "UserNotFound"
    case userNotVerified = "UserNotVerified"
}

// MARK: - AuthUserOut
struct AuthUserOut: Codable {
    let email, token, username: String
}

// MARK: AuthUserOut convenience initializers and mutators

extension AuthUserOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(AuthUserOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        email: String? = nil,
        token: String? = nil,
        username: String? = nil
    ) -> AuthUserOut {
        return AuthUserOut(
            email: email ?? self.email,
            token: token ?? self.token,
            username: username ?? self.username
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InRemoveFriend
struct InRemoveFriend: Codable {
    let removalID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case removalID = "removal_id"
        case token
    }
}

// MARK: InRemoveFriend convenience initializers and mutators

extension InRemoveFriend {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InRemoveFriend.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        removalID: Int? = nil,
        token: String? = nil
    ) -> InRemoveFriend {
        return InRemoveFriend(
            removalID: removalID ?? self.removalID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResRemoveFriend
struct ResRemoveFriend: Codable {
    let error: RemoveFriendError?
    let res: [String: JSONAny]?
}

// MARK: ResRemoveFriend convenience initializers and mutators

extension ResRemoveFriend {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResRemoveFriend.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: RemoveFriendError?? = nil,
        res: [String: JSONAny]?? = nil
    ) -> ResRemoveFriend {
        return ResRemoveFriend(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - RemoveFriendError
struct RemoveFriendError: Codable {
    let type: FluffyType
    let ierror: String?
}

// MARK: RemoveFriendError convenience initializers and mutators

extension RemoveFriendError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RemoveFriendError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: FluffyType? = nil,
        ierror: String?? = nil
    ) -> RemoveFriendError {
        return RemoveFriendError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InJoinClub
struct InJoinClub: Codable {
    let clubID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
        case token
    }
}

// MARK: InJoinClub convenience initializers and mutators

extension InJoinClub {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InJoinClub.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil,
        token: String? = nil
    ) -> InJoinClub {
        return InJoinClub(
            clubID: clubID ?? self.clubID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResJoinClub
struct ResJoinClub: Codable {
    let error: JoinClubError?
    let res: [String: JSONAny]?
}

// MARK: ResJoinClub convenience initializers and mutators

extension ResJoinClub {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResJoinClub.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: JoinClubError?? = nil,
        res: [String: JSONAny]?? = nil
    ) -> ResJoinClub {
        return ResJoinClub(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - JoinClubError
struct JoinClubError: Codable {
    let type: MagentaType
    let ierror: String?
}

// MARK: JoinClubError convenience initializers and mutators

extension JoinClubError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(JoinClubError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: MagentaType? = nil,
        ierror: String?? = nil
    ) -> JoinClubError {
        return JoinClubError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum MagentaType: String, Codable {
    case alreadyJoined = "AlreadyJoined"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - InUnjoinClub
struct InUnjoinClub: Codable {
    let clubID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
        case token
    }
}

// MARK: InUnjoinClub convenience initializers and mutators

extension InUnjoinClub {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InUnjoinClub.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil,
        token: String? = nil
    ) -> InUnjoinClub {
        return InUnjoinClub(
            clubID: clubID ?? self.clubID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResUnjoinClub
struct ResUnjoinClub: Codable {
    let error: UnjoinClubError?
    let res: [String: JSONAny]?
}

// MARK: ResUnjoinClub convenience initializers and mutators

extension ResUnjoinClub {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResUnjoinClub.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: UnjoinClubError?? = nil,
        res: [String: JSONAny]?? = nil
    ) -> ResUnjoinClub {
        return ResUnjoinClub(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UnjoinClubError
struct UnjoinClubError: Codable {
    let type: FriskyType
    let ierror: String?
}

// MARK: UnjoinClubError convenience initializers and mutators

extension UnjoinClubError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UnjoinClubError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: FriskyType? = nil,
        ierror: String?? = nil
    ) -> UnjoinClubError {
        return UnjoinClubError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum FriskyType: String, Codable {
    case cannotUnjoinAsOwner = "CannotUnjoinAsOwner"
    case clubNotFound = "ClubNotFound"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - InGetClubMembers
struct InGetClubMembers: Codable {
    let clubID: Int

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
    }
}

// MARK: InGetClubMembers convenience initializers and mutators

extension InGetClubMembers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetClubMembers.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil
    ) -> InGetClubMembers {
        return InGetClubMembers(
            clubID: clubID ?? self.clubID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetClubMembers
struct ResGetClubMembers: Codable {
    let error: GetClubMembersError?
    let res: GetClubMembersOut?
}

// MARK: ResGetClubMembers convenience initializers and mutators

extension ResGetClubMembers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetClubMembers.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetClubMembersError?? = nil,
        res: GetClubMembersOut?? = nil
    ) -> ResGetClubMembers {
        return ResGetClubMembers(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetClubMembersError
struct GetClubMembersError: Codable {
    let ierror: String
    let type: GetClubMembersErrorType
}

// MARK: GetClubMembersError convenience initializers and mutators

extension GetClubMembersError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetClubMembersError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ierror: String? = nil,
        type: GetClubMembersErrorType? = nil
    ) -> GetClubMembersError {
        return GetClubMembersError(
            ierror: ierror ?? self.ierror,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum GetClubMembersErrorType: String, Codable {
    case typeInternal = "Internal"
}

// MARK: - GetClubMembersOut
struct GetClubMembersOut: Codable {
    let users: [Int]
}

// MARK: GetClubMembersOut convenience initializers and mutators

extension GetClubMembersOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetClubMembersOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        users: [Int]? = nil
    ) -> GetClubMembersOut {
        return GetClubMembersOut(
            users: users ?? self.users
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InGetUserClubs
struct InGetUserClubs: Codable {
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
    }
}

// MARK: InGetUserClubs convenience initializers and mutators

extension InGetUserClubs {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetUserClubs.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        userID: Int? = nil
    ) -> InGetUserClubs {
        return InGetUserClubs(
            userID: userID ?? self.userID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetUserClubs
struct ResGetUserClubs: Codable {
    let error: GetUserClubsError?
    let res: GetUserClubsOut?
}

// MARK: ResGetUserClubs convenience initializers and mutators

extension ResGetUserClubs {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetUserClubs.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetUserClubsError?? = nil,
        res: GetUserClubsOut?? = nil
    ) -> ResGetUserClubs {
        return ResGetUserClubs(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetUserClubsError
struct GetUserClubsError: Codable {
    let ierror: String
    let type: GetClubMembersErrorType
}

// MARK: GetUserClubsError convenience initializers and mutators

extension GetUserClubsError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetUserClubsError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ierror: String? = nil,
        type: GetClubMembersErrorType? = nil
    ) -> GetUserClubsError {
        return GetUserClubsError(
            ierror: ierror ?? self.ierror,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetUserClubsOut
struct GetUserClubsOut: Codable {
    let clubs: [Int]
}

// MARK: GetUserClubsOut convenience initializers and mutators

extension GetUserClubsOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetUserClubsOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubs: [Int]? = nil
    ) -> GetUserClubsOut {
        return GetUserClubsOut(
            clubs: clubs ?? self.clubs
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InDeauthUser
struct InDeauthUser: Codable {
    let token: String
}

// MARK: InDeauthUser convenience initializers and mutators

extension InDeauthUser {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InDeauthUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        token: String? = nil
    ) -> InDeauthUser {
        return InDeauthUser(
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InRegexSearchClubs
struct InRegexSearchClubs: Codable {
    let batchIndex: Int
    let regex: String

    enum CodingKeys: String, CodingKey {
        case batchIndex = "batch_index"
        case regex
    }
}

// MARK: InRegexSearchClubs convenience initializers and mutators

extension InRegexSearchClubs {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InRegexSearchClubs.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        batchIndex: Int? = nil,
        regex: String? = nil
    ) -> InRegexSearchClubs {
        return InRegexSearchClubs(
            batchIndex: batchIndex ?? self.batchIndex,
            regex: regex ?? self.regex
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResRegexSearchClubs
struct ResRegexSearchClubs: Codable {
    let error: RegexSearchClubsError?
    let res: RegexSearchClubsOut?
}

// MARK: ResRegexSearchClubs convenience initializers and mutators

extension ResRegexSearchClubs {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResRegexSearchClubs.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: RegexSearchClubsError?? = nil,
        res: RegexSearchClubsOut?? = nil
    ) -> ResRegexSearchClubs {
        return ResRegexSearchClubs(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - RegexSearchClubsError
struct RegexSearchClubsError: Codable {
    let type: MischievousType
    let ierror: String?
}

// MARK: RegexSearchClubsError convenience initializers and mutators

extension RegexSearchClubsError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RegexSearchClubsError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: MischievousType? = nil,
        ierror: String?? = nil
    ) -> RegexSearchClubsError {
        return RegexSearchClubsError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum MischievousType: String, Codable {
    case regexLimit = "RegexLimit"
    case typeInternal = "Internal"
}

// MARK: - RegexSearchClubsOut
struct RegexSearchClubsOut: Codable {
    let clubs: [[UserElement]]
}

// MARK: RegexSearchClubsOut convenience initializers and mutators

extension RegexSearchClubsOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RegexSearchClubsOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubs: [[UserElement]]? = nil
    ) -> RegexSearchClubsOut {
        return RegexSearchClubsOut(
            clubs: clubs ?? self.clubs
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum UserElement: Codable {
    case integer(Int)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(UserElement.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for UserElement"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - InRegexSearchUsers
struct InRegexSearchUsers: Codable {
    let batchIndex: Int
    let regex: String

    enum CodingKeys: String, CodingKey {
        case batchIndex = "batch_index"
        case regex
    }
}

// MARK: InRegexSearchUsers convenience initializers and mutators

extension InRegexSearchUsers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InRegexSearchUsers.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        batchIndex: Int? = nil,
        regex: String? = nil
    ) -> InRegexSearchUsers {
        return InRegexSearchUsers(
            batchIndex: batchIndex ?? self.batchIndex,
            regex: regex ?? self.regex
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResRegexSearchUsers
struct ResRegexSearchUsers: Codable {
    let error: RegexSearchUsersError?
    let res: RegexSearchUsersOut?
}

// MARK: ResRegexSearchUsers convenience initializers and mutators

extension ResRegexSearchUsers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResRegexSearchUsers.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: RegexSearchUsersError?? = nil,
        res: RegexSearchUsersOut?? = nil
    ) -> ResRegexSearchUsers {
        return ResRegexSearchUsers(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - RegexSearchUsersError
struct RegexSearchUsersError: Codable {
    let type: MischievousType
    let ierror: String?
}

// MARK: RegexSearchUsersError convenience initializers and mutators

extension RegexSearchUsersError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RegexSearchUsersError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: MischievousType? = nil,
        ierror: String?? = nil
    ) -> RegexSearchUsersError {
        return RegexSearchUsersError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - RegexSearchUsersOut
struct RegexSearchUsersOut: Codable {
    let users: [[UserElement]]
}

// MARK: RegexSearchUsersOut convenience initializers and mutators

extension RegexSearchUsersOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RegexSearchUsersOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        users: [[UserElement]]? = nil
    ) -> RegexSearchUsersOut {
        return RegexSearchUsersOut(
            users: users ?? self.users
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InGetRandomClubs
struct InGetRandomClubs: Codable {
    let ignore: JSONNull?

    enum CodingKeys: String, CodingKey {
        case ignore = "_ignore"
    }
}

// MARK: InGetRandomClubs convenience initializers and mutators

extension InGetRandomClubs {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetRandomClubs.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ignore: JSONNull?? = nil
    ) -> InGetRandomClubs {
        return InGetRandomClubs(
            ignore: ignore ?? self.ignore
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetRandomClubs
struct ResGetRandomClubs: Codable {
    let error: GetRandomClubsError?
    let res: GetRandomClubsOut?
}

// MARK: ResGetRandomClubs convenience initializers and mutators

extension ResGetRandomClubs {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetRandomClubs.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetRandomClubsError?? = nil,
        res: GetRandomClubsOut?? = nil
    ) -> ResGetRandomClubs {
        return ResGetRandomClubs(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetRandomClubsError
struct GetRandomClubsError: Codable {
    let ierror: String
    let type: GetClubMembersErrorType
}

// MARK: GetRandomClubsError convenience initializers and mutators

extension GetRandomClubsError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetRandomClubsError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ierror: String? = nil,
        type: GetClubMembersErrorType? = nil
    ) -> GetRandomClubsError {
        return GetRandomClubsError(
            ierror: ierror ?? self.ierror,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetRandomClubsOut
struct GetRandomClubsOut: Codable {
    let clubs: [[GetRandomClubsOutClub]]
}

// MARK: GetRandomClubsOut convenience initializers and mutators

extension GetRandomClubsOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetRandomClubsOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubs: [[GetRandomClubsOutClub]]? = nil
    ) -> GetRandomClubsOut {
        return GetRandomClubsOut(
            clubs: clubs ?? self.clubs
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum GetRandomClubsOutClub: Codable {
    case clubProfile(ClubProfile)
    case integer(Int)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(ClubProfile.self) {
            self = .clubProfile(x)
            return
        }
        throw DecodingError.typeMismatch(GetRandomClubsOutClub.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for GetRandomClubsOutClub"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .clubProfile(let x):
            try container.encode(x)
        case .integer(let x):
            try container.encode(x)
        }
    }
}

// MARK: - ClubProfile
struct ClubProfile: Codable {
    let banner: String?
    let dcID: Int
    let description, displayName: String?
    let name: String
    let owner: Int
    let pfp: String?

    enum CodingKeys: String, CodingKey {
        case banner
        case dcID = "dc_id"
        case description
        case displayName = "display_name"
        case name, owner, pfp
    }
}

// MARK: ClubProfile convenience initializers and mutators

extension ClubProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ClubProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        banner: String?? = nil,
        dcID: Int? = nil,
        description: String?? = nil,
        displayName: String?? = nil,
        name: String? = nil,
        owner: Int? = nil,
        pfp: String?? = nil
    ) -> ClubProfile {
        return ClubProfile(
            banner: banner ?? self.banner,
            dcID: dcID ?? self.dcID,
            description: description ?? self.description,
            displayName: displayName ?? self.displayName,
            name: name ?? self.name,
            owner: owner ?? self.owner,
            pfp: pfp ?? self.pfp
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InCheckToken
struct InCheckToken: Codable {
    let token: String
}

// MARK: InCheckToken convenience initializers and mutators

extension InCheckToken {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InCheckToken.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        token: String? = nil
    ) -> InCheckToken {
        return InCheckToken(
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResCheckToken
struct ResCheckToken: Codable {
    let error: CheckTokenError?
    let res: CheckTokenOut?
}

// MARK: ResCheckToken convenience initializers and mutators

extension ResCheckToken {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResCheckToken.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: CheckTokenError?? = nil,
        res: CheckTokenOut?? = nil
    ) -> ResCheckToken {
        return ResCheckToken(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - CheckTokenError
struct CheckTokenError: Codable {
    let type: CheckTokenErrorType
}

// MARK: CheckTokenError convenience initializers and mutators

extension CheckTokenError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CheckTokenError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: CheckTokenErrorType? = nil
    ) -> CheckTokenError {
        return CheckTokenError(
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum CheckTokenErrorType: String, Codable {
    case ignore = "Ignore"
}

// MARK: - CheckTokenOut
struct CheckTokenOut: Codable {
    let userID: Int?

    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
    }
}

// MARK: CheckTokenOut convenience initializers and mutators

extension CheckTokenOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CheckTokenOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        userID: Int?? = nil
    ) -> CheckTokenOut {
        return CheckTokenOut(
            userID: userID ?? self.userID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InUnsafeAddFile
struct InUnsafeAddFile: Codable {
    let data, inUnsafeAddFileExtension: String

    enum CodingKeys: String, CodingKey {
        case data
        case inUnsafeAddFileExtension = "extension"
    }
}

// MARK: InUnsafeAddFile convenience initializers and mutators

extension InUnsafeAddFile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InUnsafeAddFile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        data: String? = nil,
        inUnsafeAddFileExtension: String? = nil
    ) -> InUnsafeAddFile {
        return InUnsafeAddFile(
            data: data ?? self.data,
            inUnsafeAddFileExtension: inUnsafeAddFileExtension ?? self.inUnsafeAddFileExtension
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResUnsafeAddFile
struct ResUnsafeAddFile: Codable {
    let error: UnsafeAddFileError?
    let res: UnsafeAddFileOut?
}

// MARK: ResUnsafeAddFile convenience initializers and mutators

extension ResUnsafeAddFile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResUnsafeAddFile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: UnsafeAddFileError?? = nil,
        res: UnsafeAddFileOut?? = nil
    ) -> ResUnsafeAddFile {
        return ResUnsafeAddFile(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UnsafeAddFileError
struct UnsafeAddFileError: Codable {
    let base64Error: String?
    let type: BraggadociousType
    let ierror: String?

    enum CodingKeys: String, CodingKey {
        case base64Error = "base64_error"
        case type, ierror
    }
}

// MARK: UnsafeAddFileError convenience initializers and mutators

extension UnsafeAddFileError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UnsafeAddFileError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        base64Error: String?? = nil,
        type: BraggadociousType? = nil,
        ierror: String?? = nil
    ) -> UnsafeAddFileError {
        return UnsafeAddFileError(
            base64Error: base64Error ?? self.base64Error,
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum BraggadociousType: String, Codable {
    case invalidBase64 = "InvalidBase64"
    case typeInternal = "Internal"
}

// MARK: - UnsafeAddFileOut
struct UnsafeAddFileOut: Codable {
    let fileLink: String

    enum CodingKeys: String, CodingKey {
        case fileLink = "file_link"
    }
}

// MARK: UnsafeAddFileOut convenience initializers and mutators

extension UnsafeAddFileOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UnsafeAddFileOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        fileLink: String? = nil
    ) -> UnsafeAddFileOut {
        return UnsafeAddFileOut(
            fileLink: fileLink ?? self.fileLink
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResDeauthUser
struct ResDeauthUser: Codable {
    let error, res: JSONNull?
}

// MARK: ResDeauthUser convenience initializers and mutators

extension ResDeauthUser {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResDeauthUser.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: JSONNull?? = nil,
        res: JSONNull?? = nil
    ) -> ResDeauthUser {
        return ResDeauthUser(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InGetDataChannelChunk
struct InGetDataChannelChunk: Codable {
    let channelID: Int
    let chunkIndex: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case channelID = "channel_id"
        case chunkIndex = "chunk_index"
        case token
    }
}

// MARK: InGetDataChannelChunk convenience initializers and mutators

extension InGetDataChannelChunk {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetDataChannelChunk.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        channelID: Int? = nil,
        chunkIndex: Int? = nil,
        token: String? = nil
    ) -> InGetDataChannelChunk {
        return InGetDataChannelChunk(
            channelID: channelID ?? self.channelID,
            chunkIndex: chunkIndex ?? self.chunkIndex,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetDataChannelChunk
struct ResGetDataChannelChunk: Codable {
    let error: GetDataChannelChunkError?
    let res: GetDataChannelChunkOut?
}

// MARK: ResGetDataChannelChunk convenience initializers and mutators

extension ResGetDataChannelChunk {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetDataChannelChunk.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetDataChannelChunkError?? = nil,
        res: GetDataChannelChunkOut?? = nil
    ) -> ResGetDataChannelChunk {
        return ResGetDataChannelChunk(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetDataChannelChunkError
struct GetDataChannelChunkError: Codable {
    let type: Type1
    let ierror: String?
}

// MARK: GetDataChannelChunkError convenience initializers and mutators

extension GetDataChannelChunkError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetDataChannelChunkError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type1? = nil,
        ierror: String?? = nil
    ) -> GetDataChannelChunkError {
        return GetDataChannelChunkError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type1: String, Codable {
    case channelNotFound = "ChannelNotFound"
    case chunkNotFound = "ChunkNotFound"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - GetDataChannelChunkOut
struct GetDataChannelChunkOut: Codable {
    let chunk: DataChunk
}

// MARK: GetDataChannelChunkOut convenience initializers and mutators

extension GetDataChannelChunkOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetDataChannelChunkOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        chunk: DataChunk? = nil
    ) -> GetDataChannelChunkOut {
        return GetDataChannelChunkOut(
            chunk: chunk ?? self.chunk
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - DataChunk
struct DataChunk: Codable {
    let items: [DataChannelItem?]
}

// MARK: DataChunk convenience initializers and mutators

extension DataChunk {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChunk.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        items: [DataChannelItem?]? = nil
    ) -> DataChunk {
        return DataChunk(
            items: items ?? self.items
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - DataChannelItem
struct DataChannelItem: Codable {
    let editTime: Int?
    let message: Message
    let postTime: Int
    let sender: Int

    enum CodingKeys: String, CodingKey {
        case editTime = "edit_time"
        case message
        case postTime = "post_time"
        case sender
    }
}

// MARK: DataChannelItem convenience initializers and mutators

extension DataChannelItem {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelItem.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        editTime: Int?? = nil,
        message: Message? = nil,
        postTime: Int? = nil,
        sender: Int? = nil
    ) -> DataChannelItem {
        return DataChannelItem(
            editTime: editTime ?? self.editTime,
            message: message ?? self.message,
            postTime: postTime ?? self.postTime,
            sender: sender ?? self.sender
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Message
struct Message: Codable {
    let text: String
    let type: MessageType
}

// MARK: Message convenience initializers and mutators

extension Message {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Message.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        text: String? = nil,
        type: MessageType? = nil
    ) -> Message {
        return Message(
            text: text ?? self.text,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum MessageType: String, Codable {
    case text = "Text"
}

// MARK: - InGetClubProfileWithName
struct InGetClubProfileWithName: Codable {
    let name: String
    let token: String?
}

// MARK: InGetClubProfileWithName convenience initializers and mutators

extension InGetClubProfileWithName {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetClubProfileWithName.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        name: String? = nil,
        token: String?? = nil
    ) -> InGetClubProfileWithName {
        return InGetClubProfileWithName(
            name: name ?? self.name,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetClubProfileWithName
struct ResGetClubProfileWithName: Codable {
    let error: GetClubProfileWithNameError?
    let res: GetClubProfileWithNameOut?
}

// MARK: ResGetClubProfileWithName convenience initializers and mutators

extension ResGetClubProfileWithName {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetClubProfileWithName.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetClubProfileWithNameError?? = nil,
        res: GetClubProfileWithNameOut?? = nil
    ) -> ResGetClubProfileWithName {
        return ResGetClubProfileWithName(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetClubProfileWithNameError
struct GetClubProfileWithNameError: Codable {
    let type: Type2
    let ierror: String?
}

// MARK: GetClubProfileWithNameError convenience initializers and mutators

extension GetClubProfileWithNameError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetClubProfileWithNameError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type2? = nil,
        ierror: String?? = nil
    ) -> GetClubProfileWithNameError {
        return GetClubProfileWithNameError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type2: String, Codable {
    case clubNotFound = "ClubNotFound"
    case typeInternal = "Internal"
}

// MARK: - GetClubProfileWithNameOut
struct GetClubProfileWithNameOut: Codable {
    let banner: String?
    let dcID: Int
    let description, displayName: String?
    let isMember: Bool?
    let name: String
    let owner: Int
    let pfp: String?

    enum CodingKeys: String, CodingKey {
        case banner
        case dcID = "dc_id"
        case description
        case displayName = "display_name"
        case isMember = "is_member"
        case name, owner, pfp
    }
}

// MARK: GetClubProfileWithNameOut convenience initializers and mutators

extension GetClubProfileWithNameOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetClubProfileWithNameOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        banner: String?? = nil,
        dcID: Int? = nil,
        description: String?? = nil,
        displayName: String?? = nil,
        isMember: Bool?? = nil,
        name: String? = nil,
        owner: Int? = nil,
        pfp: String?? = nil
    ) -> GetClubProfileWithNameOut {
        return GetClubProfileWithNameOut(
            banner: banner ?? self.banner,
            dcID: dcID ?? self.dcID,
            description: description ?? self.description,
            displayName: displayName ?? self.displayName,
            isMember: isMember ?? self.isMember,
            name: name ?? self.name,
            owner: owner ?? self.owner,
            pfp: pfp ?? self.pfp
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InGetRandomUsers
struct InGetRandomUsers: Codable {
    let ignore: JSONNull?

    enum CodingKeys: String, CodingKey {
        case ignore = "_ignore"
    }
}

// MARK: InGetRandomUsers convenience initializers and mutators

extension InGetRandomUsers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetRandomUsers.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ignore: JSONNull?? = nil
    ) -> InGetRandomUsers {
        return InGetRandomUsers(
            ignore: ignore ?? self.ignore
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetRandomUsers
struct ResGetRandomUsers: Codable {
    let error: GetRandomUsersError?
    let res: GetRandomUsersOut?
}

// MARK: ResGetRandomUsers convenience initializers and mutators

extension ResGetRandomUsers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetRandomUsers.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetRandomUsersError?? = nil,
        res: GetRandomUsersOut?? = nil
    ) -> ResGetRandomUsers {
        return ResGetRandomUsers(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetRandomUsersError
struct GetRandomUsersError: Codable {
    let ierror: String
    let type: GetClubMembersErrorType
}

// MARK: GetRandomUsersError convenience initializers and mutators

extension GetRandomUsersError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetRandomUsersError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        ierror: String? = nil,
        type: GetClubMembersErrorType? = nil
    ) -> GetRandomUsersError {
        return GetRandomUsersError(
            ierror: ierror ?? self.ierror,
            type: type ?? self.type
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetRandomUsersOut
struct GetRandomUsersOut: Codable {
    let users: [[User]]
}

// MARK: GetRandomUsersOut convenience initializers and mutators

extension GetRandomUsersOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetRandomUsersOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        users: [[User]]? = nil
    ) -> GetRandomUsersOut {
        return GetRandomUsersOut(
            users: users ?? self.users
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum User: Codable {
    case integer(Int)
    case userProfile(UserProfile)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        if let x = try? container.decode(UserProfile.self) {
            self = .userProfile(x)
            return
        }
        throw DecodingError.typeMismatch(User.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for User"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .integer(let x):
            try container.encode(x)
        case .userProfile(let x):
            try container.encode(x)
        }
    }
}

// MARK: - UserProfile
struct UserProfile: Codable {
    let banner, description, displayName, name: String?
    let pfp: String?
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case banner, description
        case displayName = "display_name"
        case name, pfp
        case userID = "user_id"
    }
}

// MARK: UserProfile convenience initializers and mutators

extension UserProfile {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UserProfile.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        banner: String?? = nil,
        description: String?? = nil,
        displayName: String?? = nil,
        name: String?? = nil,
        pfp: String?? = nil,
        userID: Int? = nil
    ) -> UserProfile {
        return UserProfile(
            banner: banner ?? self.banner,
            description: description ?? self.description,
            displayName: displayName ?? self.displayName,
            name: name ?? self.name,
            pfp: pfp ?? self.pfp,
            userID: userID ?? self.userID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InUsernameToID
struct InUsernameToID: Codable {
    let username: String
}

// MARK: InUsernameToID convenience initializers and mutators

extension InUsernameToID {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InUsernameToID.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        username: String? = nil
    ) -> InUsernameToID {
        return InUsernameToID(
            username: username ?? self.username
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResUsernameToID
struct ResUsernameToID: Codable {
    let error: UsernameToIDError?
    let res: UsernameToIDOut?
}

// MARK: ResUsernameToID convenience initializers and mutators

extension ResUsernameToID {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResUsernameToID.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: UsernameToIDError?? = nil,
        res: UsernameToIDOut?? = nil
    ) -> ResUsernameToID {
        return ResUsernameToID(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UsernameToIDError
struct UsernameToIDError: Codable {
    let type: Type3
    let ierror: String?
}

// MARK: UsernameToIDError convenience initializers and mutators

extension UsernameToIDError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UsernameToIDError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type3? = nil,
        ierror: String?? = nil
    ) -> UsernameToIDError {
        return UsernameToIDError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type3: String, Codable {
    case typeInternal = "Internal"
    case userNotFound = "UserNotFound"
}

// MARK: - UsernameToIDOut
struct UsernameToIDOut: Codable {
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
    }
}

// MARK: UsernameToIDOut convenience initializers and mutators

extension UsernameToIDOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UsernameToIDOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        userID: Int? = nil
    ) -> UsernameToIDOut {
        return UsernameToIDOut(
            userID: userID ?? self.userID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InCreateMessageRoom
struct InCreateMessageRoom: Codable {
    let clubID: Int
    let name, token: String

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
        case name, token
    }
}

// MARK: InCreateMessageRoom convenience initializers and mutators

extension InCreateMessageRoom {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InCreateMessageRoom.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil,
        name: String? = nil,
        token: String? = nil
    ) -> InCreateMessageRoom {
        return InCreateMessageRoom(
            clubID: clubID ?? self.clubID,
            name: name ?? self.name,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResCreateMessageRoom
struct ResCreateMessageRoom: Codable {
    let error: CreateMessageRoomError?
    let res: CreateMessageRoomOut?
}

// MARK: ResCreateMessageRoom convenience initializers and mutators

extension ResCreateMessageRoom {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResCreateMessageRoom.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: CreateMessageRoomError?? = nil,
        res: CreateMessageRoomOut?? = nil
    ) -> ResCreateMessageRoom {
        return ResCreateMessageRoom(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - CreateMessageRoomError
struct CreateMessageRoomError: Codable {
    let type: Type4
    let ierror: String?
}

// MARK: CreateMessageRoomError convenience initializers and mutators

extension CreateMessageRoomError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CreateMessageRoomError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type4? = nil,
        ierror: String?? = nil
    ) -> CreateMessageRoomError {
        return CreateMessageRoomError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type4: String, Codable {
    case clubNotFound = "ClubNotFound"
    case noAuth = "NoAuth"
    case notOwner = "NotOwner"
    case typeInternal = "Internal"
}

// MARK: - CreateMessageRoomOut
struct CreateMessageRoomOut: Codable {
    let messageRoomID: Int

    enum CodingKeys: String, CodingKey {
        case messageRoomID = "message_room_id"
    }
}

// MARK: CreateMessageRoomOut convenience initializers and mutators

extension CreateMessageRoomOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(CreateMessageRoomOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        messageRoomID: Int? = nil
    ) -> CreateMessageRoomOut {
        return CreateMessageRoomOut(
            messageRoomID: messageRoomID ?? self.messageRoomID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InVerifyAccount
struct InVerifyAccount: Codable {
    let code: String
}

// MARK: InVerifyAccount convenience initializers and mutators

extension InVerifyAccount {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InVerifyAccount.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        code: String? = nil
    ) -> InVerifyAccount {
        return InVerifyAccount(
            code: code ?? self.code
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InGetMessageRoom
struct InGetMessageRoom: Codable {
    let messageRoomID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case messageRoomID = "message_room_id"
        case token
    }
}

// MARK: InGetMessageRoom convenience initializers and mutators

extension InGetMessageRoom {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetMessageRoom.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        messageRoomID: Int? = nil,
        token: String? = nil
    ) -> InGetMessageRoom {
        return InGetMessageRoom(
            messageRoomID: messageRoomID ?? self.messageRoomID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetMessageRoom
struct ResGetMessageRoom: Codable {
    let error: GetMessageRoomError?
    let res: GetMessageRoomOut?
}

// MARK: ResGetMessageRoom convenience initializers and mutators

extension ResGetMessageRoom {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetMessageRoom.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetMessageRoomError?? = nil,
        res: GetMessageRoomOut?? = nil
    ) -> ResGetMessageRoom {
        return ResGetMessageRoom(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetMessageRoomError
struct GetMessageRoomError: Codable {
    let type: Type5
    let ierror: String?
}

// MARK: GetMessageRoomError convenience initializers and mutators

extension GetMessageRoomError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetMessageRoomError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type5? = nil,
        ierror: String?? = nil
    ) -> GetMessageRoomError {
        return GetMessageRoomError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type5: String, Codable {
    case messageRoomNotFound = "MessageRoomNotFound"
    case noAuth = "NoAuth"
    case notMessageRoomMember = "NotMessageRoomMember"
    case typeInternal = "Internal"
}

// MARK: - GetMessageRoomOut
struct GetMessageRoomOut: Codable {
    let clubID, dcID: Int
    let name: String?

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
        case dcID = "dc_id"
        case name
    }
}

// MARK: GetMessageRoomOut convenience initializers and mutators

extension GetMessageRoomOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetMessageRoomOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil,
        dcID: Int? = nil,
        name: String?? = nil
    ) -> GetMessageRoomOut {
        return GetMessageRoomOut(
            clubID: clubID ?? self.clubID,
            dcID: dcID ?? self.dcID,
            name: name ?? self.name
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InJoinMessageRoom
struct InJoinMessageRoom: Codable {
    let clubID, messageRoomID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
        case messageRoomID = "message_room_id"
        case token
    }
}

// MARK: InJoinMessageRoom convenience initializers and mutators

extension InJoinMessageRoom {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InJoinMessageRoom.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil,
        messageRoomID: Int? = nil,
        token: String? = nil
    ) -> InJoinMessageRoom {
        return InJoinMessageRoom(
            clubID: clubID ?? self.clubID,
            messageRoomID: messageRoomID ?? self.messageRoomID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResJoinMessageRoom
struct ResJoinMessageRoom: Codable {
    let error: JoinMessageRoomError?
    let res: [String: JSONAny]?
}

// MARK: ResJoinMessageRoom convenience initializers and mutators

extension ResJoinMessageRoom {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResJoinMessageRoom.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: JoinMessageRoomError?? = nil,
        res: [String: JSONAny]?? = nil
    ) -> ResJoinMessageRoom {
        return ResJoinMessageRoom(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - JoinMessageRoomError
struct JoinMessageRoomError: Codable {
    let type: Type6
    let ierror: String?
}

// MARK: JoinMessageRoomError convenience initializers and mutators

extension JoinMessageRoomError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(JoinMessageRoomError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type6? = nil,
        ierror: String?? = nil
    ) -> JoinMessageRoomError {
        return JoinMessageRoomError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type6: String, Codable {
    case alreadyJoined = "AlreadyJoined"
    case noAuth = "NoAuth"
    case notClubMember = "NotClubMember"
    case typeInternal = "Internal"
}

// MARK: - InGetClubMessageRooms
struct InGetClubMessageRooms: Codable {
    let clubID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case clubID = "club_id"
        case token
    }
}

// MARK: InGetClubMessageRooms convenience initializers and mutators

extension InGetClubMessageRooms {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetClubMessageRooms.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        clubID: Int? = nil,
        token: String? = nil
    ) -> InGetClubMessageRooms {
        return InGetClubMessageRooms(
            clubID: clubID ?? self.clubID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetClubMessageRooms
struct ResGetClubMessageRooms: Codable {
    let error: GetClubMessageRoomsError?
    let res: GetClubMessageRoomsOut?
}

// MARK: ResGetClubMessageRooms convenience initializers and mutators

extension ResGetClubMessageRooms {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetClubMessageRooms.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetClubMessageRoomsError?? = nil,
        res: GetClubMessageRoomsOut?? = nil
    ) -> ResGetClubMessageRooms {
        return ResGetClubMessageRooms(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetClubMessageRoomsError
struct GetClubMessageRoomsError: Codable {
    let type: Type7
    let ierror: String?
}

// MARK: GetClubMessageRoomsError convenience initializers and mutators

extension GetClubMessageRoomsError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetClubMessageRoomsError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type7? = nil,
        ierror: String?? = nil
    ) -> GetClubMessageRoomsError {
        return GetClubMessageRoomsError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type7: String, Codable {
    case noAuth = "NoAuth"
    case notClubMember = "NotClubMember"
    case typeInternal = "Internal"
}

// MARK: - GetClubMessageRoomsOut
struct GetClubMessageRoomsOut: Codable {
    let messageRooms: [Int]

    enum CodingKeys: String, CodingKey {
        case messageRooms = "message_rooms"
    }
}

// MARK: GetClubMessageRoomsOut convenience initializers and mutators

extension GetClubMessageRoomsOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetClubMessageRoomsOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        messageRooms: [Int]? = nil
    ) -> GetClubMessageRoomsOut {
        return GetClubMessageRoomsOut(
            messageRooms: messageRooms ?? self.messageRooms
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InGetMessageRoomMembers
struct InGetMessageRoomMembers: Codable {
    let messageRoomID: Int
    let token: String

    enum CodingKeys: String, CodingKey {
        case messageRoomID = "message_room_id"
        case token
    }
}

// MARK: InGetMessageRoomMembers convenience initializers and mutators

extension InGetMessageRoomMembers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InGetMessageRoomMembers.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        messageRoomID: Int? = nil,
        token: String? = nil
    ) -> InGetMessageRoomMembers {
        return InGetMessageRoomMembers(
            messageRoomID: messageRoomID ?? self.messageRoomID,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResGetMessageRoomMembers
struct ResGetMessageRoomMembers: Codable {
    let error: GetMessageRoomMembersError?
    let res: GetMessageRoomMembersOut?
}

// MARK: ResGetMessageRoomMembers convenience initializers and mutators

extension ResGetMessageRoomMembers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResGetMessageRoomMembers.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: GetMessageRoomMembersError?? = nil,
        res: GetMessageRoomMembersOut?? = nil
    ) -> ResGetMessageRoomMembers {
        return ResGetMessageRoomMembers(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - GetMessageRoomMembersError
struct GetMessageRoomMembersError: Codable {
    let type: Type8
    let ierror: String?
}

// MARK: GetMessageRoomMembersError convenience initializers and mutators

extension GetMessageRoomMembersError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetMessageRoomMembersError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type8? = nil,
        ierror: String?? = nil
    ) -> GetMessageRoomMembersError {
        return GetMessageRoomMembersError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type8: String, Codable {
    case noAuth = "NoAuth"
    case notMessageRoomMember = "NotMessageRoomMember"
    case typeInternal = "Internal"
}

// MARK: - GetMessageRoomMembersOut
struct GetMessageRoomMembersOut: Codable {
    let members: [Int]
}

// MARK: GetMessageRoomMembersOut convenience initializers and mutators

extension GetMessageRoomMembersOut {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetMessageRoomMembersOut.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        members: [Int]? = nil
    ) -> GetMessageRoomMembersOut {
        return GetMessageRoomMembersOut(
            members: members ?? self.members
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - InUploadBase64
struct InUploadBase64: Codable {
    let className, data, token: String

    enum CodingKeys: String, CodingKey {
        case className = "class_name"
        case data, token
    }
}

// MARK: InUploadBase64 convenience initializers and mutators

extension InUploadBase64 {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InUploadBase64.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        className: String? = nil,
        data: String? = nil,
        token: String? = nil
    ) -> InUploadBase64 {
        return InUploadBase64(
            className: className ?? self.className,
            data: data ?? self.data,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResUploadBase64
struct ResUploadBase64: Codable {
    let error: UploadBase64Error?
    let res: UploadBase64Out?
}

// MARK: ResUploadBase64 convenience initializers and mutators

extension ResUploadBase64 {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResUploadBase64.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: UploadBase64Error?? = nil,
        res: UploadBase64Out?? = nil
    ) -> ResUploadBase64 {
        return ResUploadBase64(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - UploadBase64Error
struct UploadBase64Error: Codable {
    let type: Type9
    let ierror: String?
}

// MARK: UploadBase64Error convenience initializers and mutators

extension UploadBase64Error {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UploadBase64Error.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type9? = nil,
        ierror: String?? = nil
    ) -> UploadBase64Error {
        return UploadBase64Error(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type9: String, Codable {
    case dataRejected = "DataRejected"
    case invalidBase64 = "InvalidBase64"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - UploadBase64Out
struct UploadBase64Out: Codable {
    let objectName: String

    enum CodingKeys: String, CodingKey {
        case objectName = "object_name"
    }
}

// MARK: UploadBase64Out convenience initializers and mutators

extension UploadBase64Out {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(UploadBase64Out.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        objectName: String? = nil
    ) -> UploadBase64Out {
        return UploadBase64Out(
            objectName: objectName ?? self.objectName
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResVerifyAccount
struct ResVerifyAccount: Codable {
    let error: VerifyAccountError?
    let res: JSONNull?
}

// MARK: ResVerifyAccount convenience initializers and mutators

extension ResVerifyAccount {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResVerifyAccount.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: VerifyAccountError?? = nil,
        res: JSONNull?? = nil
    ) -> ResVerifyAccount {
        return ResVerifyAccount(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

/// My favorite error message.
// MARK: - VerifyAccountError
struct VerifyAccountError: Codable {
    let type: Type10
    let ierror: String?
}

// MARK: VerifyAccountError convenience initializers and mutators

extension VerifyAccountError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(VerifyAccountError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type10? = nil,
        ierror: String?? = nil
    ) -> VerifyAccountError {
        return VerifyAccountError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type10: String, Codable {
    case codeTimedOutOrAlreadyVerifiedOrInvalidCode = "CodeTimedOutOrAlreadyVerifiedOrInvalidCode"
    case typeInternal = "Internal"
}

// MARK: - DataChannelInitRequest
struct DataChannelInitRequest: Codable {
    let channel: Int
    let token: String
}

// MARK: DataChannelInitRequest convenience initializers and mutators

extension DataChannelInitRequest {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelInitRequest.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        channel: Int? = nil,
        token: String? = nil
    ) -> DataChannelInitRequest {
        return DataChannelInitRequest(
            channel: channel ?? self.channel,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - DataChannelInitResponse
struct DataChannelInitResponse: Codable {
    let currentChunk: Int?
    let error: DataChannelInitError?

    enum CodingKeys: String, CodingKey {
        case currentChunk = "current_chunk"
        case error
    }
}

// MARK: DataChannelInitResponse convenience initializers and mutators

extension DataChannelInitResponse {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelInitResponse.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        currentChunk: Int?? = nil,
        error: DataChannelInitError?? = nil
    ) -> DataChannelInitResponse {
        return DataChannelInitResponse(
            currentChunk: currentChunk ?? self.currentChunk,
            error: error ?? self.error
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - DataChannelInitError
struct DataChannelInitError: Codable {
    let type: Type11
    let ierror: String?
}

// MARK: DataChannelInitError convenience initializers and mutators

extension DataChannelInitError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelInitError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type11? = nil,
        ierror: String?? = nil
    ) -> DataChannelInitError {
        return DataChannelInitError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type11: String, Codable {
    case channelNotFound = "ChannelNotFound"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - DataChannelRequest
struct DataChannelRequest: Codable {
    let command: DataChannelCommandType
    let token: String
}

// MARK: DataChannelRequest convenience initializers and mutators

extension DataChannelRequest {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelRequest.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        command: DataChannelCommandType? = nil,
        token: String? = nil
    ) -> DataChannelRequest {
        return DataChannelRequest(
            command: command ?? self.command,
            token: token ?? self.token
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - DataChannelCommandType
struct DataChannelCommandType: Codable {
    let message: Message?
    let type: DataChannelCommandTypeType
    let chunk, index: Int?
    let newMessage: Message?

    enum CodingKeys: String, CodingKey {
        case message, type, chunk, index
        case newMessage = "new_message"
    }
}

// MARK: DataChannelCommandType convenience initializers and mutators

extension DataChannelCommandType {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelCommandType.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        message: Message?? = nil,
        type: DataChannelCommandTypeType? = nil,
        chunk: Int?? = nil,
        index: Int?? = nil,
        newMessage: Message?? = nil
    ) -> DataChannelCommandType {
        return DataChannelCommandType(
            message: message ?? self.message,
            type: type ?? self.type,
            chunk: chunk ?? self.chunk,
            index: index ?? self.index,
            newMessage: newMessage ?? self.newMessage
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum DataChannelCommandTypeType: String, Codable {
    case delete = "Delete"
    case edit = "Edit"
    case send = "Send"
}

// MARK: - DataChannelResponse
struct DataChannelResponse: Codable {
    let error: DataChannelError?
    let res: DataChannelResponseType?
}

// MARK: DataChannelResponse convenience initializers and mutators

extension DataChannelResponse {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelResponse.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: DataChannelError?? = nil,
        res: DataChannelResponseType?? = nil
    ) -> DataChannelResponse {
        return DataChannelResponse(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - DataChannelError
struct DataChannelError: Codable {
    let type: Type12
    let ierror: String?
}

// MARK: DataChannelError convenience initializers and mutators

extension DataChannelError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type12? = nil,
        ierror: String?? = nil
    ) -> DataChannelError {
        return DataChannelError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type12: String, Codable {
    case channelNotFound = "ChannelNotFound"
    case chunkNotFound = "ChunkNotFound"
    case dataItemDeleted = "DataItemDeleted"
    case dataItemNotFound = "DataItemNotFound"
    case noAuth = "NoAuth"
    case typeInternal = "Internal"
}

// MARK: - DataChannelResponseType
struct DataChannelResponseType: Codable {
    let item: DataChannelItem?
    let type: ResType
    let chunk, index: Int?
    let newItem: DataChannelItem?

    enum CodingKeys: String, CodingKey {
        case item, type, chunk, index
        case newItem = "new_item"
    }
}

// MARK: DataChannelResponseType convenience initializers and mutators

extension DataChannelResponseType {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DataChannelResponseType.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        item: DataChannelItem?? = nil,
        type: ResType? = nil,
        chunk: Int?? = nil,
        index: Int?? = nil,
        newItem: DataChannelItem?? = nil
    ) -> DataChannelResponseType {
        return DataChannelResponseType(
            item: item ?? self.item,
            type: type ?? self.type,
            chunk: chunk ?? self.chunk,
            index: index ?? self.index,
            newItem: newItem ?? self.newItem
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum ResType: String, Codable {
    case onDelete = "OnDelete"
    case onEdit = "OnEdit"
    case onNew = "OnNew"
}

// MARK: - InSendVerify
struct InSendVerify: Codable {
    let userID: Int

    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
    }
}

// MARK: InSendVerify convenience initializers and mutators

extension InSendVerify {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(InSendVerify.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        userID: Int? = nil
    ) -> InSendVerify {
        return InSendVerify(
            userID: userID ?? self.userID
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - ResSendVerify
struct ResSendVerify: Codable {
    let error: SendVerifyError?
    let res: JSONNull?
}

// MARK: ResSendVerify convenience initializers and mutators

extension ResSendVerify {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResSendVerify.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        error: SendVerifyError?? = nil,
        res: JSONNull?? = nil
    ) -> ResSendVerify {
        return ResSendVerify(
            error: error ?? self.error,
            res: res ?? self.res
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

/// Failed to send the verification message (usually an email error).
// MARK: - SendVerifyError
struct SendVerifyError: Codable {
    let type: Type13
    let ierror: String?
}

// MARK: SendVerifyError convenience initializers and mutators

extension SendVerifyError {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SendVerifyError.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        type: Type13? = nil,
        ierror: String?? = nil
    ) -> SendVerifyError {
        return SendVerifyError(
            type: type ?? self.type,
            ierror: ierror ?? self.ierror
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

enum Type13: String, Codable {
    case resendTooSoon = "ResendTooSoon"
    case sendVerification = "SendVerification"
    case typeInternal = "Internal"
    case userNotFound = "UserNotFound"
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

func bubbelApiCreateUser(req: InCreateUser) async throws -> ResCreateUser {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/create_user")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResCreateUser.self, from: data)
            return result
        }
func bubbelApiAuthUser(req: InAuthUser) async throws -> ResAuthUser {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/auth_user")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResAuthUser.self, from: data)
            return result
        }
func bubbelApiDeauthUser(req: InDeauthUser) async throws -> ResDeauthUser {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/deauth_user")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResDeauthUser.self, from: data)
            return result
        }
func bubbelApiVerifyAccount(req: InVerifyAccount) async throws -> ResVerifyAccount {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/verify_account")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResVerifyAccount.self, from: data)
            return result
        }
func bubbelApiSendVerify(req: InSendVerify) async throws -> ResSendVerify {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/send_verify")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResSendVerify.self, from: data)
            return result
        }
func bubbelApiSetUserProfile(req: InSetUserProfile) async throws -> ResSetUserProfile {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/set_user_profile")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResSetUserProfile.self, from: data)
            return result
        }
func bubbelApiGetUserProfile(req: InGetUserProfile) async throws -> ResGetUserProfile {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_user_profile")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetUserProfile.self, from: data)
            return result
        }
func bubbelApiDeleteUser(req: InDeleteUser) async throws -> ResDeleteUser {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/delete_user")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResDeleteUser.self, from: data)
            return result
        }
func bubbelApiCreateClub(req: InCreateClub) async throws -> ResCreateClub {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/create_club")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResCreateClub.self, from: data)
            return result
        }
func bubbelApiGetClubProfile(req: InGetClubProfile) async throws -> ResGetClubProfile {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_club_profile")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetClubProfile.self, from: data)
            return result
        }
func bubbelApiSetClubProfile(req: InSetClubProfile) async throws -> ResSetClubProfile {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/set_club_profile")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResSetClubProfile.self, from: data)
            return result
        }
func bubbelApiDeleteClub(req: InDeleteClub) async throws -> ResDeleteClub {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/delete_club")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResDeleteClub.self, from: data)
            return result
        }
func bubbelApiGetUserProfileWithUsername(req: InGetUserProfileWithUsername) async throws -> ResGetUserProfileWithUsername {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_user_profile_with_username")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetUserProfileWithUsername.self, from: data)
            return result
        }
func bubbelApiAddFriendConnection(req: InAddFriendConnection) async throws -> ResAddFriendConnection {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/add_friend_connection")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResAddFriendConnection.self, from: data)
            return result
        }
func bubbelApiGetFriendConnections(req: InGetFriendConnections) async throws -> ResGetFriendConnections {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_friend_connections")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetFriendConnections.self, from: data)
            return result
        }
func bubbelApiRemoveFriend(req: InRemoveFriend) async throws -> ResRemoveFriend {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/remove_friend")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResRemoveFriend.self, from: data)
            return result
        }
func bubbelApiJoinClub(req: InJoinClub) async throws -> ResJoinClub {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/join_club")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResJoinClub.self, from: data)
            return result
        }
func bubbelApiUnjoinClub(req: InUnjoinClub) async throws -> ResUnjoinClub {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/unjoin_club")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResUnjoinClub.self, from: data)
            return result
        }
func bubbelApiGetClubMembers(req: InGetClubMembers) async throws -> ResGetClubMembers {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_club_members")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetClubMembers.self, from: data)
            return result
        }
func bubbelApiGetUserClubs(req: InGetUserClubs) async throws -> ResGetUserClubs {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_user_clubs")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetUserClubs.self, from: data)
            return result
        }
func bubbelApiRegexSearchClubs(req: InRegexSearchClubs) async throws -> ResRegexSearchClubs {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/regex_search_clubs")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResRegexSearchClubs.self, from: data)
            return result
        }
func bubbelApiRegexSearchUsers(req: InRegexSearchUsers) async throws -> ResRegexSearchUsers {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/regex_search_users")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResRegexSearchUsers.self, from: data)
            return result
        }
func bubbelApiGetRandomClubs(req: InGetRandomClubs) async throws -> ResGetRandomClubs {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_random_clubs")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetRandomClubs.self, from: data)
            return result
        }
func bubbelApiCheckToken(req: InCheckToken) async throws -> ResCheckToken {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/check_token")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResCheckToken.self, from: data)
            return result
        }
func bubbelApiUnsafeAddFile(req: InUnsafeAddFile) async throws -> ResUnsafeAddFile {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/unsafe_add_file")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResUnsafeAddFile.self, from: data)
            return result
        }
func bubbelApiGetDataChannelChunk(req: InGetDataChannelChunk) async throws -> ResGetDataChannelChunk {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_data_channel_chunk")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetDataChannelChunk.self, from: data)
            return result
        }
func bubbelApiGetClubProfileWithName(req: InGetClubProfileWithName) async throws -> ResGetClubProfileWithName {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_club_profile_with_name")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetClubProfileWithName.self, from: data)
            return result
        }
func bubbelApiGetRandomUsers(req: InGetRandomUsers) async throws -> ResGetRandomUsers {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_random_users")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetRandomUsers.self, from: data)
            return result
        }
func bubbelApiUsernameToId(req: InUsernameToId) async throws -> ResUsernameToId {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/username_to_id")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResUsernameToId.self, from: data)
            return result
        }
func bubbelApiCreateMessageRoom(req: InCreateMessageRoom) async throws -> ResCreateMessageRoom {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/create_message_room")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResCreateMessageRoom.self, from: data)
            return result
        }
func bubbelApiGetMessageRoom(req: InGetMessageRoom) async throws -> ResGetMessageRoom {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_message_room")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetMessageRoom.self, from: data)
            return result
        }
func bubbelApiJoinMessageRoom(req: InJoinMessageRoom) async throws -> ResJoinMessageRoom {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/join_message_room")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResJoinMessageRoom.self, from: data)
            return result
        }
func bubbelApiGetClubMessageRooms(req: InGetClubMessageRooms) async throws -> ResGetClubMessageRooms {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_club_message_rooms")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetClubMessageRooms.self, from: data)
            return result
        }
func bubbelApiGetMessageRoomMembers(req: InGetMessageRoomMembers) async throws -> ResGetMessageRoomMembers {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/get_message_room_members")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResGetMessageRoomMembers.self, from: data)
            return result
        }
func bubbelApiUploadBase64(req: InUploadBase64) async throws -> ResUploadBase64 {
            let json = try req.jsonData()
            
            let url = URL(string: bubbelBathDev + "/api/upload_base64")!
            var urlRequest = URLRequest(url: url)
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
            urlRequest.httpMethod = "POST"
            urlRequest.httpBody = json
            
            let (data, response) = try await URLSession.shared.data(for: urlRequest)
            let (dataString) = String(data: data, encoding: .utf8) ?? ""
            
            let decoder = JSONDecoder()
            let result = try decoder.decode(ResUploadBase64.self, from: data)
            return result
        }
