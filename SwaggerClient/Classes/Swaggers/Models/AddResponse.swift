//
// AddResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class AddResponse: JSONEncodable {
    public var responseTime: Int64?
    public var response: String?
    public var listItemId: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ResponseTime"] = self.responseTime?.encodeToJSON()
        nillableDictionary["Response"] = self.response
        nillableDictionary["ListItemId"] = self.listItemId
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
