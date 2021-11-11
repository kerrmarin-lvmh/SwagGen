//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class DeviceObject: APIModel {

    public var token: String

    /** When this device was created */
    public var createdAt: DateTime

    public var type: _Type

    public var customer: Customer

    public var description: String?

    public class _Type: APIModel {

        public var code: String?

        public var description: String?

        public init(code: String? = nil, description: String? = nil) {
            self.code = code
            self.description = description
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            code = try container.decodeIfPresent("code")
            description = try container.decodeIfPresent("description")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(code, forKey: "code")
            try container.encodeIfPresent(description, forKey: "description")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? _Type else { return false }
          guard self.code == object.code else { return false }
          guard self.description == object.description else { return false }
          return true
        }

        public static func == (lhs: _Type, rhs: _Type) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public class Customer: APIModel {

        public var country: Country?

        /** When the customer was created */
        public var createdAt: DateTime?

        public var id: String?

        public var idp: Idp?

        public var subscriberId: String?

        public class Country: APIModel {

            public var code: String?

            public var description: String?

            public init(code: String? = nil, description: String? = nil) {
                self.code = code
                self.description = description
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                code = try container.decodeIfPresent("code")
                description = try container.decodeIfPresent("description")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(code, forKey: "code")
                try container.encodeIfPresent(description, forKey: "description")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? Country else { return false }
              guard self.code == object.code else { return false }
              guard self.description == object.description else { return false }
              return true
            }

            public static func == (lhs: Country, rhs: Country) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public class Idp: APIModel {

            public var code: String?

            public var description: String?

            public init(code: String? = nil, description: String? = nil) {
                self.code = code
                self.description = description
            }

            public required init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: StringCodingKey.self)

                code = try container.decodeIfPresent("code")
                description = try container.decodeIfPresent("description")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: StringCodingKey.self)

                try container.encodeIfPresent(code, forKey: "code")
                try container.encodeIfPresent(description, forKey: "description")
            }

            public func isEqual(to object: Any?) -> Bool {
              guard let object = object as? Idp else { return false }
              guard self.code == object.code else { return false }
              guard self.description == object.description else { return false }
              return true
            }

            public static func == (lhs: Idp, rhs: Idp) -> Bool {
                return lhs.isEqual(to: rhs)
            }
        }

        public init(country: Country? = nil, createdAt: DateTime? = nil, id: String? = nil, idp: Idp? = nil, subscriberId: String? = nil) {
            self.country = country
            self.createdAt = createdAt
            self.id = id
            self.idp = idp
            self.subscriberId = subscriberId
        }

        public required init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: StringCodingKey.self)

            country = try container.decodeIfPresent("country")
            createdAt = try container.decodeIfPresent("createdAt")
            id = try container.decodeIfPresent("id")
            idp = try container.decodeIfPresent("idp")
            subscriberId = try container.decodeIfPresent("subscriberId")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: StringCodingKey.self)

            try container.encodeIfPresent(country, forKey: "country")
            try container.encodeIfPresent(createdAt, forKey: "createdAt")
            try container.encodeIfPresent(id, forKey: "id")
            try container.encodeIfPresent(idp, forKey: "idp")
            try container.encodeIfPresent(subscriberId, forKey: "subscriberId")
        }

        public func isEqual(to object: Any?) -> Bool {
          guard let object = object as? Customer else { return false }
          guard self.country == object.country else { return false }
          guard self.createdAt == object.createdAt else { return false }
          guard self.id == object.id else { return false }
          guard self.idp == object.idp else { return false }
          guard self.subscriberId == object.subscriberId else { return false }
          return true
        }

        public static func == (lhs: Customer, rhs: Customer) -> Bool {
            return lhs.isEqual(to: rhs)
        }
    }

    public init(token: String, createdAt: DateTime, type: _Type, customer: Customer, description: String? = nil) {
        self.token = token
        self.createdAt = createdAt
        self.type = type
        self.customer = customer
        self.description = description
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        token = try container.decode("token")
        createdAt = try container.decode("createdAt")
        type = try container.decode("type")
        customer = try container.decode("customer")
        description = try container.decodeIfPresent("description")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encode(token, forKey: "token")
        try container.encode(createdAt, forKey: "createdAt")
        try container.encode(type, forKey: "type")
        try container.encode(customer, forKey: "customer")
        try container.encodeIfPresent(description, forKey: "description")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? DeviceObject else { return false }
      guard self.token == object.token else { return false }
      guard self.createdAt == object.createdAt else { return false }
      guard self.type == object.type else { return false }
      guard self.customer == object.customer else { return false }
      guard self.description == object.description else { return false }
      return true
    }

    public static func == (lhs: DeviceObject, rhs: DeviceObject) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
