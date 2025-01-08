// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Karte",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "KarteCore",
            targets: ["KarteCore", "KarteUtilities"]
        ),
        .library(
            name: "KarteInAppMessaging",
            targets: ["KarteInAppMessaging", "KarteCore", "KarteUtilities"]
        ),
        .library(
            name: "KarteVariables",
            targets: ["KarteVariables", "KarteCore", "KarteUtilities"]
        ),
        .library(
            name: "KarteVisualTracking",
            targets: ["KarteVisualTracking", "KarteCore", "KarteUtilities"]
        ),
        .library(
            name: "KarteInbox",
            targets: ["KarteInbox", "KarteCore", "KarteUtilities"]
        ),
        .library(
            name: "KarteRemoteNotification",
            targets: ["KarteRemoteNotification", "KarteCore", "KarteUtilities"]
        ),
        .library(
            name: "KarteNotificationServiceExtension",
            targets: ["KarteNotificationServiceExtension"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/microsoft/plcrashreporter.git", from: "1.11.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "KarteUtilities", url: "https://sdk.karte.io/ios/swiftpm/Utilities-3.12.0/KarteUtilities.xcframework.zip", checksum: "850abc71a8bc28e415f4b11e3072ff741a1d908c13b951a4676bc2e675eaf634"
        ),
        .binaryTarget(
            name: "KarteCore", url: "https://sdk.karte.io/ios/swiftpm/Core-2.30.0/KarteCore.xcframework.zip", checksum: "b4814553acd31092d29a50b75b34680484d55eece5c7152dca694590c9263c60"
        ),
        .binaryTarget(
            name: "KarteInAppMessaging", url: "https://sdk.karte.io/ios/swiftpm/InAppMessaging-2.19.0/KarteInAppMessaging.xcframework.zip", checksum: "b87a10043ac75d9c7ced8f7493bd8c8e8d4f590facc7dd51f843675157ecfad9"
        ),
        .binaryTarget(
            name: "KarteVariables", url: "https://sdk.karte.io/ios/swiftpm/Variables-2.10.0/KarteVariables.xcframework.zip", checksum: "19665bf1c9eb5e04719b660839de4ca1145589a62669de6f12efb38fc39a4aad"
        ),
        .binaryTarget(
            name: "KarteVisualTracking", url: "https://sdk.karte.io/ios/swiftpm/VisualTracking-2.12.0/KarteVisualTracking.xcframework.zip", checksum: "03364a75282667223acd96c4132afd173e12cf6da6f87a98855842d5e8d2c605"
        ),
        .binaryTarget(
            name: "KarteInbox", url: "https://sdk.karte.io/ios/swiftpm/Inbox-0.1.0/KarteInbox.xcframework.zip", checksum: "09850b4f66bca44e95e6cd3f15cd42a56137d6b4143108a8ac33b6b49aff3920"
        ),
        .binaryTarget(
            name: "KarteRemoteNotification", url: "https://sdk.karte.io/ios/swiftpm/RemoteNotification-2.11.0/KarteRemoteNotification.xcframework.zip", checksum: "58bde3ca6ff813de18787b9dbe3b3b4e3ff9ddbe1713fb941b6be6d34a196ef6"
        ),
        .binaryTarget(
            name: "KarteNotificationServiceExtension", url: "https://sdk.karte.io/ios/swiftpm/NotificationServiceExtension-1.2.0/KarteNotificationServiceExtension.xcframework.zip", checksum: "6810dc9af039b44c84d2ef2535cc6050ed0917a57d236e7a7d0dddae6e9d15b4"
        ),
    ]
)
