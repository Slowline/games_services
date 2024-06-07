import Foundation

public struct IdentityVerificationData: Codable {
    var publicKeyUrl: String
    var signature: String
    var salt: String
    var timestamp: Int64

    func toDictionary() -> [String: Any] {
      return [
        "publicKeyUrl": publicKeyUrl,
        "signature": signature,
        "salt": salt,
        "timestamp": timestamp
      ]
    }
  }