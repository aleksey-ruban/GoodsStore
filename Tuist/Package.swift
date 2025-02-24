// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "PackageName",
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0"),
        .package(url: "https://github.com/Swinject/Swinject", from: "2.0.0"),
        .package(url: "https://github.com/onevcat/Kingfisher", from: "8.0.0"),
    ]
)
