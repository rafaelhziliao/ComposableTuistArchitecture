import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(
    name: "ComposableTuistArchitecture",
    packages: [
        .remote(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            requirement: .upToNextMajor(from: "0.6.0")
        ),
    ],
    dependencies: [
        .project(
            target: "ComposableTuistArchitectureKit",
            path: .relativeToRoot("Projects/ComposableTuistArchitectureKit")
        ),
        .project(
            target: "RecipeList",
            path: .relativeToRoot("Projects/Features/RecipeList")
        ),
        .package(product: "ComposableArchitecture"),
        .package(product: "CasePaths"),
    ]
)