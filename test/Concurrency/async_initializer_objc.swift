// RUN: %target-swift-frontend  -disable-availability-checking %s -emit-sil -o /dev/null -verify
// RUN: %target-swift-frontend  -disable-availability-checking %s -emit-sil -o /dev/null -verify -strict-concurrency=targeted
// RUN: %target-swift-frontend  -disable-availability-checking %s -emit-sil -o /dev/null -verify -strict-concurrency=complete
// RUN: %target-swift-frontend  -disable-availability-checking %s -emit-sil -o /dev/null -verify -strict-concurrency=complete -enable-experimental-feature SendNonSendable

// REQUIRES: concurrency
// REQUIRES: objc_interop

import Foundation

class X: NSObject {
  // expected-error@+1 {{'async' initializer cannot be represented in Objective-C}}
  @objc init(_ i : Int) async { }
}

