import Foundation

struct IdentityVerificationData {
    let publicKeyUrl: String
    let signature: String
    let salt: String
    let timestamp: Int64

    func toDictionary() -> [String: Any] {
      return [
        "publicKeyUrl": publicKeyUrl,
        "signature": signature,
        "salt": salt,
        "timestamp": timestamp
      ]
    }
  }