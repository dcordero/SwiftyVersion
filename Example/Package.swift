import PackageDescription

let package = Package(
    name: "Example",
    dependencies: [
		.Package(url: "https://github.com/dcordero/SwiftyVersion.git", "0.0.2")
    ]
)
