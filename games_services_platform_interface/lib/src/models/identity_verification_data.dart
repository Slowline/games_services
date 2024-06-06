/// Wrapper Object to return either the IdToken Signature for Android devices
/// or the entire IdentityVerificationData for iOS/macOS devices
class IdentityVerificationData {
  /// Only on Apple devices, latest url to the public key
  final String? publicKeyUrl;

  /// Will either be the IdToken Signature or the apple identity signature
  final String signature;

  /// Only on Apple devices, A random NSString that GameKit uses to compute the hash and randomize it.
  final String? salt;

  /// Only on Apple devices, The signature’s creation date and time.
  final int? timestamp;

  IdentityVerificationData({
    this.publicKeyUrl,
    required this.signature,
    this.salt,
    this.timestamp,
  });

  factory IdentityVerificationData.fromMap(Map<String, dynamic> map) {
    return IdentityVerificationData(
      publicKeyUrl: map['publicKeyUrl'],
      signature: map['signature'],
      salt: map['salt'],
      timestamp: map['timestamp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'publicKeyUrl': publicKeyUrl,
      'signature': signature,
      'salt': salt,
      'timestamp': timestamp,
    };
  }

  @override
  String toString() {
    return 'IdentityVerificationData(publicKeyUrl: $publicKeyUrl, signature: $signature, salt: $salt, timestamp: $timestamp)';
  }
}