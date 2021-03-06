//
// Error.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Error: JSONEncodable {
    public var responseTime: Int64?
    public var response: String?
    public var errorMessage: String?

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["ResponseTime"] = self.responseTime?.encodeToJSON()
        nillableDictionary["Response"] = self.response
        nillableDictionary["ErrorMessage"] = self.errorMessage
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
