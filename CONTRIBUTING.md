# Contributing to @d11/react-native-fast-image

Thank you for considering contributing to `@d11/react-native-fast-image`! This document outlines the process for contributing to this project and how to get started as a contributor.

## Code of Conduct

We expect all contributors to follow our [code of conduct](CODE_OF_CONDUCT.md). Please be respectful and considerate of others when contributing to this project.

## Getting Started

### Fork and Clone the Repository

1. Fork the repository on GitHub by clicking the "Fork" button at the top right of the repository page.
2. Clone your fork locally:
```bash
git clone https://github.com/YOUR_USERNAME/react-native-fast-image.git
cd react-native-fast-image
```
3. Add the upstream repository as a remote:
```bash
git remote add upstream https://github.com/ds-horizon/react-native-fast-image.git
```

### Development Environment Setup

To set up your development environment:

```bash
# Verify Yarn version (should be 3.6.4)
yarn -v
```

### Running the Example App

The repository includes an example app and a server to test your changes:

#### Run the Example App:

```bash
# Navigate to the example app directory
cd ReactNativeFastImageExample

# Install dependencies
yarn

# For Android:
yarn android

# For iOS:
cd ios
bundle install
bundle exec pod install
cd ..
yarn ios
```

#### Start the Example Server (optional):
```bash
# Navigate to the server directory
cd ReactNativeFastImageExampleServer

# Install server dependencies
yarn

# Start the server
yarn start
```

## Making Changes

1. Create a new branch from the main branch:
```bash
git checkout -b feature/your-feature-name
```

2. Make your changes and ensure they follow the project's code style (use `yarn lint` to check).

3. Write tests for your changes if applicable:
```bash
yarn test
```

## Submitting Changes

When your changes are ready to submit:

1. Ensure your code is well-documented and passes all tests
2. Push your changes to your forked repository 
3. Create a pull request to the main repository

For a step-by-step demonstration on the pull request process, check out this helpful video: [GitHub Pull Request in 100 Seconds](https://www.youtube.com/watch?v=8lGpZkjnkt4)

Fill in the pull request template with details about your changes, including:
- What problem your PR solves
- How you tested your changes
- Any screenshots for UI changes

## Signing the CLA (Contributor License Agreement)

Before your contribution can be accepted, you will need to sign our Contributor License Agreement (CLA). The CLA bot will automatically comment on your PR with instructions when you create it.

## Review and address feedback

Keep an eye on any comments and review feedback left on your pull request on GitHub. Maintainers will do their best to provide constructive, actionable feedback to help get your changes ready to be merged into the @d11/react-native-fast-image repository.

If you have questions or need help during the review process, you can also join our [Discord server](https://discord.gg/NyenAm9T) to discuss with the maintainers and community members.