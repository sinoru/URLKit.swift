import Foundation
import Alamofire

public protocol TopLevelDataDecoder: Alamofire.DataDecoder {
    func decode<T>(_ type: T.Type, from: Data) throws -> T where T: Decodable
}

extension JSONDecoder: TopLevelDataDecoder {}
extension PropertyListDecoder: TopLevelDataDecoder {}
