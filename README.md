###### ⚠️ This is a fork of [react-native-fast-image](https://github.com/DylanVann/react-native-fast-image). All credit goes to the original author.

# FastImage
A high-performance image component for React Native, now fully optimized for the **New React Native Architecture**! 🎉

## 🚀 What’s New?

**FastImage** now includes:
- **TurboModules** and **Fabric Renderer** compatibility for enhanced performance.
- **AVIF Image Support** for next-gen image formats.
- Numerous bug fixes and performance improvements over the original repository.

## 🔥 Why Choose FastImage?

FastImage is a drop-in replacement for React Native’s `Image` component, offering solutions for common image loading challenges like:
- Flickering during loading
- Cache inconsistencies
- Slow loading from cache
- Overall suboptimal performance

FastImage leverages **[SDWebImage (iOS)](https://github.com/rs/SDWebImage)** and **[Glide (Android)](https://github.com/bumptech/glide)** for native caching and high efficiency.


<br>
<div align="center">

[![Version][version-badge]][package]
[![Downloads][downloads-badge]][npmtrends]
[![Build Status][build-badge]][build]
[![Code Coverage][coverage-badge]][coverage]

[![Watch on GitHub][github-watch-badge]][github-watch]
[![Star on GitHub][github-star-badge]][github-star]
[![Tweet][twitter-badge]][twitter]

</div>

<p align="center">
  <kbd>
    <img
      src="https://github.com/dream-sports-labs/react-native-fast-image/blob/main/docs/assets/scroll.gif?raw=true"
      title="Scroll Demo"
      width="250"
    >
  </kbd>
  <kbd>
    <img
      src="https://github.com/dream-sports-labs/react-native-fast-image/blob/main/docs/assets/priority.gif?raw=true"
      title="Priority Demo"
      width="250"
    >
  </kbd>
  <br>
  Experience blazing-fast images with the latest React Native technology.
</p>

## ⚙️ Features

- ✅ Aggressive caching for high speed.
- ✅ Customizable authorization headers.
- ✅ Priority-based image loading.
- ✅ Preloading for instant display.
- ✅ Full GIF and **AVIF support**.
- ✅ Support for `borderRadius`.
- ✅ Support for Fabric Renderer (v8.7.0+).
- ✅ Support for TurboModules (v8.8.0+).

## 📦 Installation

To install FastImage in your project, run:

Using `yarn`:
```bash
yarn add @d11/react-native-fast-image
cd ios && pod install
```

Or using `npm`:
```bash
npm install @d11/react-native-fast-image
cd ios && pod install
```

> **Note**: You must be using React Native 0.60.0 or higher to use the most recent version of `@d11/react-native-fast-image`.

### Usage Example

```jsx
import FastImage from "@d11/react-native-fast-image";
import * as React from "react";

const YourImage = () => (
  <FastImage
    style={{ width: 200, height: 200 }}
    source={{
      uri: "https://unsplash.it/400/400?image=1",
      headers: { Authorization: "someAuthToken" },
      priority: FastImage.priority.normal,
    }}
    resizeMode={FastImage.resizeMode.contain}
  />
);
```

## 🌐 Already Using Glide with an `AppGlideModule`?

If you're already using Glide and an `AppGlideModule`, [read this guide](docs/app-glide-module.md) to ensure smooth integration.

## 🛡️ ProGuard Config

If using [ProGuard](https://www.guardsquare.com/proguard), add these rules to `android/app/proguard-rules.pro`:

```pro
-keep public class com.dylanvann.fastimage.* {*;}
-keep public class com.dylanvann.fastimage.** {*;}
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep public class * extends com.bumptech.glide.module.AppGlideModule
-keep public enum com.bumptech.glide.load.ImageHeaderParser$** {
  **[] $VALUES;
  public *;
}
```

## 📖 API Documentation

### Properties

| Property               | Type                       | Description                                                                                                                                                                                                                                             |
|------------------------|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `source`               | `object`                   | Source for the remote image. Accepts an object with sub-properties like `uri`, `headers`, `priority`, and `cache`.                                                                                                                                      |
| `source.uri`           | `string`                   | The URL to load the image from. e.g., `"https://unsplash.it/400/400?image=1"`.                                                                                                                                                                          |
| `source.headers`       | `object`                   | Headers to load the image with, e.g., `{ Authorization: "someAuthToken" }`.                                                                                                                                                                             |
| `source.priority`      | `FastImage.priority`       | Load priority: <br> - `FastImage.priority.low` <br> - `FastImage.priority.normal` **(Default)** <br> - `FastImage.priority.high`                                                                                                                        |
| `source.cache`         | `FastImage.cacheControl`   | Cache control: <br> - `FastImage.cacheControl.immutable` **(Default)** <br> - `FastImage.cacheControl.web` <br> - `FastImage.cacheControl.cacheOnly`                                                                                                     |
| `defaultSource`        | `number`                   | An asset loaded with `require()` or `import`. Note: on Android, `defaultSource` does not work in debug mode.                                                                                                                                            |
| `resizeMode`           | `FastImage.resizeMode`     | Resize mode: <br> - `FastImage.resizeMode.contain` <br> - `FastImage.resizeMode.cover` **(Default)** <br> - `FastImage.resizeMode.stretch` <br> - `FastImage.resizeMode.center`                                  |
| `transition`           | `FastImage.transition`     | transition applied when displaying the image: <br> - `FastImage.transition.none` **(Default)** <br> - `FastImage.transition.fade` (React Native Image equivalent)  |
| `onLoadStart`          | `function`                 | Callback when the image starts to load.                                                                                                                                                                                                                 |
| `onProgress`           | `(event: OnProgressEvent) => void` | Callback when the image is loading, with `event.nativeEvent.loaded` and `event.nativeEvent.total` bytes.                                                                                                         |
| `onLoad`               | `(event: OnLoadEvent) => void` | Callback when the image is successfully loaded, with `event.nativeEvent.width` and `event.nativeEvent.height` values.                                                                                           |
| `onError`              | `(event: OnErrorEvent) => void`| Callback when an error occurs in loading the image or the source is malformed, with `event.nativeEvent.error`.                                                                                                                 |
| `onLoadEnd`            | `function`                 | Callback when the image finishes loading, regardless of success or failure.                                                                                                                                       |
| `style`                | `ViewStyle`                | Style for the image component, supports `borderRadius`.                                                                                                                                                          |
| `fallback`             | `boolean`                  | If `true`, it will fall back to using `Image`. This still applies styles and layout as with `FastImage`.                                                                                                         |
| `tintColor`            | `number` or `string`          | Color tint for all non-transparent pixels in the image.                                                                                                                                                          |
| `testID`               | `string`                   | Optional ID for testing, such as with [`react-test-renderer`](https://www.npmjs.com/package/react-test-renderer).                                                                                                |

### Static Methods

| Method                           | Description                                                                                              |
|----------------------------------|----------------------------------------------------------------------------------------------------------|
| `FastImage.preload(sources: object[])`   | Preloads images for faster display when they are rendered. <br> Example: `FastImage.preload([{ uri: "https://unsplash.it/400/400?image=1" }])`. |
| `FastImage.clearMemoryCache(): Promise<void>`   | Clears all images from the memory cache.                                                                 |
| `FastImage.clearDiskCache(): Promise<void>`     | Clears all images from the disk cache.                                                                   |

## 👥 Contributing

We welcome contributions to improve FastImage! Please check out our [contributing guide](CONTRIBUTING.md) for guidelines on how to proceed.

## 🛠️ Troubleshooting

If you run into issues while using this library, try the solutions in our [troubleshooting guide](docs/troubleshooting.md).

## 🧪 Supported React Native Versions

This project aims to support the latest version of React Native, simplifying development and testing. For older versions, consider forking the repository if you require specific features or bug fixes.

## 👏 Credits

The original idea for this module came from [@vovkasm](https://github.com/vovkasm)’s [react-native-web-image](https://github.com/vovkasm/react-native-web-image) package.

Special thanks to:
- **@mobinni** for help with conceptualization.
- [SDWebImage](https://github.com/rs/SDWebImage) (iOS) and [Glide](https://github.com/bumptech/glide) (Android) for powerful image caching.

## ⚖️ License

- **FastImage** – MIT © [DreamSportsLabs](https://github.com/dream-sports-labs)
- **SDWebImage** – MIT
- **Glide** – BSD, part MIT, Apache 2.0. See [LICENSE](https://github.com/bumptech/glide/blob/master/LICENSE) for details.

[build-badge]: https://github.com/dream-sports-labs/react-native-fast-image/workflows/CI/badge.svg
[build]: https://github.com/dream-sports-labs/react-native-fast-image/actions?query=workflow%3ACI
[coverage-badge]: https://img.shields.io/codecov/c/github/dream-sports-labs/react-native-fast-image.svg
[coverage]: https://codecov.io/github/dream-sports-labs/react-native-fast-image
[downloads-badge]: https://img.shields.io/npm/dm/@d11/react-native-fast-image.svg
[npmtrends]: http://www.npmtrends.com/@d11/react-native-fast-image
[package]: https://www.npmjs.com/package/@d11/react-native-fast-image
[version-badge]: https://img.shields.io/npm/v/@d11/react-native-fast-image.svg
[twitter]: https://twitter.com/home?status=Check%20out%20react-native-fast-image%20by%20%40atomarranger%20https%3A//github.com/dream-sports-labs/react-native-fast-image
[twitter-badge]: https://img.shields.io/twitter/url/https/github.com/dream-sports-labs/react-native-fast-image.svg?style=social
[github-watch-badge]: https://img.shields.io/github/watchers/dream-sports-labs/react-native-fast-image.svg?style=social
[github-watch]: https://github.com/dream-sports-labs/react-native-fast-image/watchers
[github-star-badge]: https://img.shields.io/github/stars/dream-sports-labs/react-native-fast-image.svg?style=social
[github-star]: https://github.com/dream-sports-labs/react-native-fast-image/stargazers
