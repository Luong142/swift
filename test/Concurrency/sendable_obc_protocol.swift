// RUN: %target-swift-frontend(mock-sdk: %clang-importer-sdk) -emit-sil %s -verify -parse-as-library -o /dev/null
// RUN: %target-swift-frontend(mock-sdk: %clang-importer-sdk) -emit-sil %s -verify -parse-as-library -o /dev/null -strict-concurrency=targeted
// RUN: %target-swift-frontend(mock-sdk: %clang-importer-sdk) -emit-sil %s -verify -parse-as-library -o /dev/null -strict-concurrency=complete
// RUN: %target-swift-frontend(mock-sdk: %clang-importer-sdk) -emit-sil %s -verify -parse-as-library -o /dev/null -strict-concurrency=complete -enable-experimental-feature SendNonSendable

// REQUIRES: objc_interop
// REQUIRES: concurrency
import Foundation

@objc protocol P: Sendable { }
