import ProjectDescription

let project = Project(
    name: "GoodsStore",
    settings: .settings(
        base: [
            "DEVELOPMENT_TEAM": "5P2MVJMNMA",
            "IPHONEOS_DEPLOYMENT_TARGET": "18.0",
            "MARKETING_VERSION": "1.0.0",
            "CURRENT_PROJECT_VERSION": "1.0.0",
            "PRODUCT_BUNDLE_IDENTIFIER": "GoodsStore",
            "PRODUCT_NAME": "GoodsStore",
            "INFOPLIST_KEY_CFBundleDisplayName": "Goods Store",
            "INFOPLIST_KEY_LSApplicationCategoryType": "public.app-category.shopping",
        ]
    ),
    targets: [
        .target(
            name: "GoodsStore",
            destinations: .iOS,
            product: .app,
            bundleId: "com.ABNprogs.GoodsStore",
            infoPlist: .file(path: "GoodsStore/Resources/Info.plist"),
            sources: [
                "GoodsStore/Application/**",
                "GoodsStore/Domain/**",
                .glob("GoodsStore/Data/**",
                      excluding: ["GoodsStore/Data/PersistentStorages/CoreDataStorage/GoodsStore.xcdatamodeld"]),
                "GoodsStore/Presentation/**/*.swift",
            ],
            resources: [
                "GoodsStore/Presentation/**/*.storyboard",
                .glob(pattern: "GoodsStore/Resources/**",
                      excluding: ["GoodsStore/Resources/Info.plist"]),
                
            ],
            dependencies: [
                .external(name: "Alamofire"),
                .external(name: "Swinject"),
                .external(name: "Kingfisher"),
            ],
            coreDataModels: [
                .coreDataModel("GoodsStore/Data/PersistentStorages/CoreDataStorage/GoodsStore.xcdatamodeld")
            ]
        ),
        .target(
            name: "GoodsStoreTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "com.ABNprogs.GoodsStoreTests",
            infoPlist: .default,
            sources: ["GoodsStoreTests/**"],
            resources: [],
            dependencies: [.target(name: "GoodsStore")],
            settings: .settings(base: ["DEVELOPMENT_TEAM": "5P2MVJMNMA"])
        ),
        .target(
            name: "GoodsStoreUITests",
            destinations: .iOS,
            product: .uiTests,
            bundleId: "com.ABNprogs.GoodsStoreUITests",
            infoPlist: .default,
            sources: ["GoodsStoreUITests/**"],
            resources: [],
            dependencies: [.target(name: "GoodsStore")],
            settings: .settings(base: ["DEVELOPMENT_TEAM": "5P2MVJMNMA"])
        ),
    ]
)
