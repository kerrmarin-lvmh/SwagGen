//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class FareBounds: APIModel {

    public var description: String?

    public var displayName: String?

    public var displayOrder: Int?

    public var from: String?

    public var id: Int?

    public var isPopularFare: Bool?

    public var isPopularTravelCard: Bool?

    public var isTour: Bool?

    public var messages: [Message]?

    public var _operator: String?

    public var routeCode: String?

    public var to: String?

    public var via: String?

    public init(description: String? = nil, displayName: String? = nil, displayOrder: Int? = nil, from: String? = nil, id: Int? = nil, isPopularFare: Bool? = nil, isPopularTravelCard: Bool? = nil, isTour: Bool? = nil, messages: [Message]? = nil, _operator: String? = nil, routeCode: String? = nil, to: String? = nil, via: String? = nil) {
        self.description = description
        self.displayName = displayName
        self.displayOrder = displayOrder
        self.from = from
        self.id = id
        self.isPopularFare = isPopularFare
        self.isPopularTravelCard = isPopularTravelCard
        self.isTour = isTour
        self.messages = messages
        self._operator = _operator
        self.routeCode = routeCode
        self.to = to
        self.via = via
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        description = try container.decodeIfPresent("description")
        displayName = try container.decodeIfPresent("displayName")
        displayOrder = try container.decodeIfPresent("displayOrder")
        from = try container.decodeIfPresent("from")
        id = try container.decodeIfPresent("id")
        isPopularFare = try container.decodeIfPresent("isPopularFare")
        isPopularTravelCard = try container.decodeIfPresent("isPopularTravelCard")
        isTour = try container.decodeIfPresent("isTour")
        messages = try container.decodeArrayIfPresent("messages")
        _operator = try container.decodeIfPresent("operator")
        routeCode = try container.decodeIfPresent("routeCode")
        to = try container.decodeIfPresent("to")
        via = try container.decodeIfPresent("via")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(description, forKey: "description")
        try container.encodeIfPresent(displayName, forKey: "displayName")
        try container.encodeIfPresent(displayOrder, forKey: "displayOrder")
        try container.encodeIfPresent(from, forKey: "from")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(isPopularFare, forKey: "isPopularFare")
        try container.encodeIfPresent(isPopularTravelCard, forKey: "isPopularTravelCard")
        try container.encodeIfPresent(isTour, forKey: "isTour")
        try container.encodeIfPresent(messages, forKey: "messages")
        try container.encodeIfPresent(_operator, forKey: "operator")
        try container.encodeIfPresent(routeCode, forKey: "routeCode")
        try container.encodeIfPresent(to, forKey: "to")
        try container.encodeIfPresent(via, forKey: "via")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? FareBounds else { return false }
      guard self.description == object.description else { return false }
      guard self.displayName == object.displayName else { return false }
      guard self.displayOrder == object.displayOrder else { return false }
      guard self.from == object.from else { return false }
      guard self.id == object.id else { return false }
      guard self.isPopularFare == object.isPopularFare else { return false }
      guard self.isPopularTravelCard == object.isPopularTravelCard else { return false }
      guard self.isTour == object.isTour else { return false }
      guard self.messages == object.messages else { return false }
      guard self._operator == object._operator else { return false }
      guard self.routeCode == object.routeCode else { return false }
      guard self.to == object.to else { return false }
      guard self.via == object.via else { return false }
      return true
    }

    public static func == (lhs: FareBounds, rhs: FareBounds) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
