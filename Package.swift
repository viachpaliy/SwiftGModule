import PackageDescription

let package = Package(
    name: "GModule",
    dependencies: [
        .Package(url: "https://github.com/viachpaliy/SwiftGLib.git",  majorVersion: 1)
    ],
    swiftLanguageVersions: [3, 4]
)
