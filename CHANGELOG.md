

## [8.12.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.11.1...v8.12.0) (2025-09-05)


### Features

* Error propagation from native to JS ([bbd812b](https://github.com/ds-horizon/react-native-fast-image/commit/bbd812b5e6ea9e6df8ca63193fdf2c0209264da5))


### Bug Fixes

* gif playback broken on android in release builds ([7151aca](https://github.com/ds-horizon/react-native-fast-image/commit/7151acacb08323428a39135173f8d5c5f10511de))

### [8.11.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.11.0...v8.11.1) (2025-08-18)


### Bug Fixes

* ios fix fast image view init for new arch, fix decoders for avif and webp ([d73356b57](https://github.com/ds-horizon/react-native-fast-image/commit/64f36d6e79b1d11d647f0f1c5c0fab0d73356b57))
* split module from view in ios ([fe124f91](https://github.com/ds-horizon/react-native-fast-image/commit/3943fd7e060cda6dc36f543b1aaba1d8fe124f91))

## [8.11.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.10.0...v8.11.0) (2025-08-02)


### Features

* react-native 0.80.0 support added ([c58f59a](https://github.com/ds-horizon/react-native-fast-image/commit/c58f59ae61db6f626096fe35bc36482e2cdd8199))
* added support for 16 kb page size ([65b6f24](https://github.com/ds-horizon/react-native-fast-image/commit/65b6f24534d3bd515b2bb44e371fcbba20a107ef))


### Bug Fixes

* [Android] Headers to being applied ([181e0d5](https://github.com/ds-horizon/react-native-fast-image/commit/181e0d5f3f58459fb351d9adba3c1eac68cdf23c))
* react native error in strict bridgless mode ([dcdf93c](https://github.com/ds-horizon/react-native-fast-image/commit/dcdf93cd06ba86a439ad99afe111c0863982f568))

## [8.10.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.9.2...v8.10.0) (2025-07-08)


### Features

* added code of conduct and contribution doc ([9c5fa94](https://github.com/ds-horizon/react-native-fast-image/commit/9c5fa94bbe2ca80906f133e8cdd67faba1076965))
* added issue template for feature request and discussions ([a61548a](https://github.com/ds-horizon/react-native-fast-image/commit/a61548a0cb638ace1fbfdf010eb6990d34637f4b))
* added pull request template ([f177cca](https://github.com/ds-horizon/react-native-fast-image/commit/f177ccaa45901ad47180fb8862e539fbc0ae80d1))


### Bug Fixes

* crash on android when the headers property is specified on the source ([6c149d1](https://github.com/ds-horizon/react-native-fast-image/pull/212/commits/6c149d10182ba06af91086764e2318868fe10c7a))


### [8.9.2](https://github.com/ds-horizon/react-native-fast-image/compare/v8.9.1...v8.9.2) (2025-02-16)


### Bug Fixes

* headers handled as readable array ([8637965](https://github.com/ds-horizon/react-native-fast-image/commit/8637965446408c533dbf743068126d1ec1350535))
* image header for expo ([f1ef489](https://github.com/ds-horizon/react-native-fast-image/commit/f1ef489c807fddc6b1de4067fc615e5737663ea9))

### [8.9.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.9.0...v8.9.1) (2025-01-06)


### Bug Fixes

* add new release PR process ([6827669](https://github.com/ds-horizon/react-native-fast-image/commit/6827669ffc382193d4de322ea30554fe0d6df94f))
* animated webp support ios ([cdf3c78](https://github.com/ds-horizon/react-native-fast-image/commit/cdf3c783e83f521ed1122ba87a924eca34ecb38b))
* avif support ([a6e086f](https://github.com/ds-horizon/react-native-fast-image/commit/a6e086fff4244554858d8e1c0dd603f4ff533e35))
* avoid double-including src when excludeAppGlideModule = true ([fb8cb0d](https://github.com/ds-horizon/react-native-fast-image/commit/fb8cb0d710b840f7de2a6fbcde92020cc20bf6dc))

## [8.9.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.8.1...v8.9.0) (2024-12-04)


### Features

* support for animated avif on iOS ([d4a4deb](https://github.com/ds-horizon/react-native-fast-image/commit/d4a4deba0ab04ca2d0a1104a99a1147432cb98b4))
* support webp animated image android ([9076a88](https://github.com/ds-horizon/react-native-fast-image/commit/9076a88b24479ac7d6b3b5d7e38b626ce893d123))


### Bug Fixes

* remove avif integration causing gif rendering issue ([50395a6](https://github.com/ds-horizon/react-native-fast-image/commit/50395a6dfdb856c07de9d76eac13608804cad50f))

### [8.8.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.8.0...v8.8.1) (2024-11-11)


### Bug Fixes

* added example for remote avif image ([d928f14](https://github.com/ds-horizon/react-native-fast-image/commit/d928f14eadc3b1c081e5d777235f08234b67203d))
* added missing onLoad event details in android ([d203b5f](https://github.com/ds-horizon/react-native-fast-image/commit/d203b5f237b78407738791f35c8ef6d2c2e2ee57))
* bumped up glide version to support transparent avif ([1a5585c](https://github.com/ds-horizon/react-native-fast-image/commit/1a5585c8e237461215b4a79b1ef642867493636e))

## [8.8.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.7.0...v8.8.0) (2024-10-14)


### Features

* added turbo module support ([#93](https://github.com/ds-horizon/react-native-fast-image/issues/93)) ([8227a7f](https://github.com/ds-horizon/react-native-fast-image/commit/8227a7faf6f76d98d043d60cc3cc5b17965f30bb))


### Bug Fixes

* first pull octakit instance ([46c025e](https://github.com/ds-horizon/react-native-fast-image/commit/46c025e60a19bd9decdbe0f3a27917bf33adb03f))

## [8.7.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.6.12...v8.7.0) (2024-09-23)


### Features

* add fabric support ([#37](https://github.com/ds-horizon/react-native-fast-image/issues/37)) ([ce07e8a](https://github.com/ds-horizon/react-native-fast-image/commit/ce07e8aca336d6fab9894e56a2279285b6b8691e))


### Bug Fixes

* local image loading issue  in debug and release app ([#77](https://github.com/ds-horizon/react-native-fast-image/issues/77)) ([cbbc806](https://github.com/ds-horizon/react-native-fast-image/commit/cbbc80606e4e7941a058277c0e4e8a3950bafb44))
* new arch import ([#78](https://github.com/ds-horizon/react-native-fast-image/issues/78)) ([d36e230](https://github.com/ds-horizon/react-native-fast-image/commit/d36e230c5adcc8dbc0abe76d0530b0c4319d1226))
* semicolon issue ([9d413ee](https://github.com/ds-horizon/react-native-fast-image/commit/9d413ee9fa15831833bb928ca02d1567fb5727ee))
* view util bug ([#79](https://github.com/ds-horizon/react-native-fast-image/issues/79)) ([4561e6f](https://github.com/ds-horizon/react-native-fast-image/commit/4561e6f0bb3788017e6809d56d769d9875be5402))

### Changelog

All notable changes to this project will be documented in this file. Dates are displayed in UTC.

Generated by [`auto-changelog`](https://github.com/CookPete/auto-changelog).

#### [v8.6.12](https://github.com/ds-horizon/react-native-fast-image/compare/v8.6.10...v8.6.12)

- fix: image source final issue from react native [`3d28b2b`](https://github.com/ds-horizon/react-native-fast-image/commit/3d28b2b5db8ad4873a6e0d09d1f27f6fcfcf670c)

#### [v8.6.10](https://github.com/ds-horizon/react-native-fast-image/compare/v8.6.9-beta.0-beta...v8.6.10)

> 21 August 2024

- chore: release v8.6.10 [`#35`](https://github.com/ds-horizon/react-native-fast-image/pull/35)
- chore/fix git workflow releases [`#27`](https://github.com/ds-horizon/react-native-fast-image/pull/27)
- chore: release process actions [`#20`](https://github.com/ds-horizon/react-native-fast-image/pull/20)
- chore: update documentation for new repo [`#22`](https://github.com/ds-horizon/react-native-fast-image/pull/22)
- fix/application context issue [`#24`](https://github.com/ds-horizon/react-native-fast-image/pull/24)
- chore: release versions and changelog [`#19`](https://github.com/ds-horizon/react-native-fast-image/pull/19)
- chore: package configuration to create declaration file [`#18`](https://github.com/ds-horizon/react-native-fast-image/pull/18)
- docs: change dream11 to dreamsports labs [`#17`](https://github.com/ds-horizon/react-native-fast-image/pull/17)
- feat: bridgeless mode [`#16`](https://github.com/ds-horizon/react-native-fast-image/pull/16)
- refactor: contribution guide [`#15`](https://github.com/ds-horizon/react-native-fast-image/pull/15)
- chore: prod release workflow [`#14`](https://github.com/ds-horizon/react-native-fast-image/pull/14)
- chore: deleted unused workflow [`f219736`](https://github.com/ds-horizon/react-native-fast-image/commit/f21973672437204d48bc6a22b2fa69aebe46843e)
- chore: fix version info [`de81b8e`](https://github.com/ds-horizon/react-native-fast-image/commit/de81b8e49c7b4e368a7940e7c1e3a69e596ef324)
- chore: fix version info [`c6a8279`](https://github.com/ds-horizon/react-native-fast-image/commit/c6a827993a0423f9aeadff974ce7fb288c2c0764)

#### [v8.6.9-beta.0-beta](https://github.com/ds-horizon/react-native-fast-image/compare/v8.6.3...v8.6.9-beta.0-beta)

> 30 July 2024

- Handle undefined callbacks ios [`#5`](https://github.com/ds-horizon/react-native-fast-image/pull/5)
- refactor: change git organisation [`#1`](https://github.com/ds-horizon/react-native-fast-image/pull/1)
- fix: example app fixes and package upgrade [`#17`](https://github.com/ds-horizon/react-native-fast-image/pull/17)
- chore: refactor package json [`#16`](https://github.com/ds-horizon/react-native-fast-image/pull/16)
- fix: version upgrade [`#14`](https://github.com/ds-horizon/react-native-fast-image/pull/14)
- refactor: change author and package name [`#12`](https://github.com/ds-horizon/react-native-fast-image/pull/12)
- fix: accessible prop on view [`#11`](https://github.com/ds-horizon/react-native-fast-image/pull/11)
- fix: on error empty null source [#1028] [`#10`](https://github.com/ds-horizon/react-native-fast-image/pull/10)
- fix: upgrade sdwebimage [`#7`](https://github.com/ds-horizon/react-native-fast-image/pull/7)
- fix: preload source uri empty crash [`#8`](https://github.com/ds-horizon/react-native-fast-image/pull/8)
- fix: ios 17 crash [`#9`](https://github.com/ds-horizon/react-native-fast-image/pull/9)
- chore: run internal example [`#2`](https://github.com/ds-horizon/react-native-fast-image/pull/2)
- chore: running internal and upgrading [`6e0c43c`](https://github.com/ds-horizon/react-native-fast-image/commit/6e0c43ccbbca6b82fe767978098275439081c2c5)
- chore: workflow setup and automate build process [`fd89244`](https://github.com/ds-horizon/react-native-fast-image/commit/fd89244981d38e14430726749c1a66a30278f4f0)
- Release v8.6.9-beta.0-beta [`e72f2ce`](https://github.com/ds-horizon/react-native-fast-image/commit/e72f2ce89991df01f7c51dadcb2cb0b23514051b)

#### [v8.6.3](https://github.com/ds-horizon/react-native-fast-image/compare/v8.6.2...v8.6.3)

> 31 October 2022

- fix: use ColorValue type [`#939`](https://github.com/ds-horizon/react-native-fast-image/pull/939)
- fix: tintColor in fallback Image [`#882`](https://github.com/ds-horizon/react-native-fast-image/pull/882)
- release(version): Release 8.6.3 [skip ci] [`9ab80fc`](https://github.com/ds-horizon/react-native-fast-image/commit/9ab80fcd570b7f56da66ab20e52c9a35934067c9)

#### [v8.6.2](https://github.com/ds-horizon/react-native-fast-image/compare/v8.6.1...v8.6.2)

> 31 October 2022

- fix: Add tintColor to Flow FastImageProps type [`#871`](https://github.com/ds-horizon/react-native-fast-image/pull/871)
- release(version): Release 8.6.2 [skip ci] [`fe3fcf8`](https://github.com/ds-horizon/react-native-fast-image/commit/fe3fcf8046c53e009ef42b719e585a15b1af2184)

#### [v8.6.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.6.0...v8.6.1)

> 5 September 2022

- fix: Flow syntax error [`#924`](https://github.com/ds-horizon/react-native-fast-image/pull/924)
- release(version): Release 8.6.1 [skip ci] [`c474877`](https://github.com/ds-horizon/react-native-fast-image/commit/c47487777c2b7f2db2b923eacc6faffc0f18d671)

#### [v8.6.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.12...v8.6.0)

> 29 August 2022

- feat: support defaultSource on iOS and Android [`#921`](https://github.com/ds-horizon/react-native-fast-image/pull/921)
- release(version): Release 8.6.0 [skip ci] [`f6a3fe4`](https://github.com/ds-horizon/react-native-fast-image/commit/f6a3fe44b427d46707d595ef8fe02e48cd139a15)

#### [v8.5.12](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.11...v8.5.12)

> 28 August 2022

- release(version): Release 8.5.12 [skip ci] [`cc9da99`](https://github.com/ds-horizon/react-native-fast-image/commit/cc9da9941628779b2a0fc35a318370fc89cda7be)
- chore: Update React peerDependency to "^17 || ^18" [`6255fc4`](https://github.com/ds-horizon/react-native-fast-image/commit/6255fc4f9deea0b83476ddb0c5389d0076ab6cfc)

#### [v8.5.11](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.10...v8.5.11)

> 27 September 2021

- fix: null exception in FastImageViewManager.java [`#423`](https://github.com/ds-horizon/react-native-fast-image/pull/423)
- release(version): Release 8.5.11 [skip ci] [`4d8c749`](https://github.com/ds-horizon/react-native-fast-image/commit/4d8c74945df460bd89ad2bb74c86efb6ccf76c48)

#### [v8.5.10](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.9...v8.5.10)

> 27 September 2021

- chore: convert examples to hooks [`#830`](https://github.com/ds-horizon/react-native-fast-image/pull/830)
- release(version): Release 8.5.10 [skip ci] [`8950a38`](https://github.com/ds-horizon/react-native-fast-image/commit/8950a38a3d7aa437acc49211683e96f0d017dd32)

#### [v8.5.9](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.8...v8.5.9)

> 27 September 2021

- fix: FastImage extends ViewProps [`#829`](https://github.com/ds-horizon/react-native-fast-image/pull/829)
- fix: FastImage extends ViewProps (#829) [`#819`](https://github.com/ds-horizon/react-native-fast-image/issues/819)
- ci: update CI and (re)enable coverage (#826) [skip ci] [`d96b851`](https://github.com/ds-horizon/react-native-fast-image/commit/d96b851f3894c6224f76cea4301c5ef1cf689be3)
- release(version): Release 8.5.9 [skip ci] [`291876b`](https://github.com/ds-horizon/react-native-fast-image/commit/291876b6cdc08ab3259d74b8bd7bd7741b2e001a)

#### [v8.5.8](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.7...v8.5.8)

> 17 September 2021

- docs: fix gifs [`b07eafe`](https://github.com/ds-horizon/react-native-fast-image/commit/b07eafefa2c1cfba0ed8e045f91d511db84ca085)
- release(version): Release 8.5.8 [skip ci] [`4aea52f`](https://github.com/ds-horizon/react-native-fast-image/commit/4aea52fc4dce11edf2bfb8eb919c96cc89d58e01)

#### [v8.5.7](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.6...v8.5.7)

> 17 September 2021

- chore: upgrade example to react-native@0.65.1 [`125f9cc`](https://github.com/ds-horizon/react-native-fast-image/commit/125f9ccde41d4b6470ff804913ae2db8829546c9)
- release(version): Release 8.5.7 [skip ci] [`37408cd`](https://github.com/ds-horizon/react-native-fast-image/commit/37408cde5150827072f8b14338f5813e6f287816)

#### [v8.5.6](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.5...v8.5.6)

> 16 September 2021

- fix: make corresponding flow file for .cjs file [`#784`](https://github.com/ds-horizon/react-native-fast-image/issues/784)
- release(version): Release 8.5.6 [skip ci] [`2964acf`](https://github.com/ds-horizon/react-native-fast-image/commit/2964acfbf428e6d8993ac539662a75617d414fb9)

#### [v8.5.5](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.4...v8.5.5)

> 15 September 2021

- fix: do not crash when source is invalid [`#782`](https://github.com/ds-horizon/react-native-fast-image/pull/782)
- release(version): Release 8.5.5 [skip ci] [`a88e55f`](https://github.com/ds-horizon/react-native-fast-image/commit/a88e55fa0d774ce4cf05b1b0537cdd89f1a126b4)

#### [v8.5.4](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.3...v8.5.4)

> 15 September 2021

- release(version): Release 8.5.4 [skip ci] [`716c01a`](https://github.com/ds-horizon/react-native-fast-image/commit/716c01a967f10a863fe127066c9c299623b91500)
- fix(android): update Glide [`86edd7f`](https://github.com/ds-horizon/react-native-fast-image/commit/86edd7ffc54a293cd732801fc70c0d4ada03899c)

#### [v8.5.3](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.2...v8.5.3)

> 15 September 2021

- fix(ios): update SDWebImage [`#740`](https://github.com/ds-horizon/react-native-fast-image/pull/740)
- release(version): Release 8.5.3 [skip ci] [`0754f6d`](https://github.com/ds-horizon/react-native-fast-image/commit/0754f6def87847cb1db6d599dc745a61b0069777)

#### [v8.5.2](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.1...v8.5.2)

> 15 September 2021

- release(version): Release 8.5.2 [skip ci] [`0b9d5a1`](https://github.com/ds-horizon/react-native-fast-image/commit/0b9d5a17b1edc61ef4c01cb6586c176bd87746eb)
- fix(android): replace jcenter with mavenCentral [`69c9422`](https://github.com/ds-horizon/react-native-fast-image/commit/69c942276fedbb517eaf0d45f8fb3fdb8a191b2a)

#### [v8.5.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.5.0...v8.5.1)

> 15 September 2021

- fix: improve/update build.gradle [`1f04c55`](https://github.com/ds-horizon/react-native-fast-image/commit/1f04c5542c6138d58446c58c3f3a5614772f81f1)
- release(version): Release 8.5.1 [skip ci] [`f602c5b`](https://github.com/ds-horizon/react-native-fast-image/commit/f602c5bdc4eeb6719f4005763da163104e59c41b)

#### [v8.5.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.4.1...v8.5.0)

> 15 September 2021

- feat(ios): cancel image load when unmounted [`#787`](https://github.com/ds-horizon/react-native-fast-image/pull/787)
- release(version): Release 8.5.0 [skip ci] [`df37c4f`](https://github.com/ds-horizon/react-native-fast-image/commit/df37c4f7b2b376d5bc8cfd92a5ae20cef091e17e)

#### [v8.4.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.4.0...v8.4.1)

> 15 September 2021

- docs: add docs for clear*Cache static methods [`fb2bb46`](https://github.com/ds-horizon/react-native-fast-image/commit/fb2bb46903703b1220b0b84c02be14b01bd35706)
- release(version): Release 8.4.1 [skip ci] [`908267f`](https://github.com/ds-horizon/react-native-fast-image/commit/908267f7888c230f55467fec7f5f9c39abc93545)

#### [v8.4.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.3.7...v8.4.0)

> 15 September 2021

- fix: export FastImageStaticProperties [`#822`](https://github.com/ds-horizon/react-native-fast-image/pull/822)
- feat: add clear image cache from memory and disk [`#425`](https://github.com/ds-horizon/react-native-fast-image/pull/425)
- fix: update dv-scripts [`3c6d0f4`](https://github.com/ds-horizon/react-native-fast-image/commit/3c6d0f4c7bfce991bcbad02ce5816d93a93121e5)
- fix: update dv-scripts [`61fab12`](https://github.com/ds-horizon/react-native-fast-image/commit/61fab122ab90b404714035789e42d711ed1f93ab)
- release(version): Release 8.4.0 [skip ci] [`16e265e`](https://github.com/ds-horizon/react-native-fast-image/commit/16e265eca4107439c297dca152bc87e9cd61aac8)

#### [v8.3.7](https://github.com/ds-horizon/react-native-fast-image/compare/v8.3.6...v8.3.7)

> 24 July 2021

- chore: upgrade example and devDependencies [`#802`](https://github.com/ds-horizon/react-native-fast-image/pull/802)
- release(version): Release 8.3.7 [skip ci] [`4fc024b`](https://github.com/ds-horizon/react-native-fast-image/commit/4fc024b3bf65cbda8734c6bc7d62990e997b9c3d)

#### [v8.3.6](https://github.com/ds-horizon/react-native-fast-image/compare/v8.3.5...v8.3.6)

> 8 July 2021

- docs: add install instructions for iOS [`#781`](https://github.com/ds-horizon/react-native-fast-image/pull/781)
- release(version): Release 8.3.6 [skip ci] [`c136ee6`](https://github.com/ds-horizon/react-native-fast-image/commit/c136ee6867fe16dd49716b2d932ea5b0dad08fad)

#### [v8.3.5](https://github.com/ds-horizon/react-native-fast-image/compare/v8.3.4...v8.3.5)

> 6 July 2021

- fix: add react@17 as peer dependency [`#790`](https://github.com/ds-horizon/react-native-fast-image/pull/790)
- release(version): Release 8.3.5 [skip ci] [`861b713`](https://github.com/ds-horizon/react-native-fast-image/commit/861b7136f5b4c1803f2c9bcf48ccae0f3f34ca42)

#### [v8.3.4](https://github.com/ds-horizon/react-native-fast-image/compare/v8.3.3...v8.3.4)

> 17 November 2020

- chore: upgrade yarn and set node version [`#745`](https://github.com/ds-horizon/react-native-fast-image/pull/745)
- release(version): Release 8.3.4 [skip ci] [`0439f71`](https://github.com/ds-horizon/react-native-fast-image/commit/0439f7190f141e51a391c84890cdd8a7067c6ad3)

#### [v8.3.3](https://github.com/ds-horizon/react-native-fast-image/compare/v8.3.2...v8.3.3)

> 1 November 2020

- fix: xcode 12 compatibility [`#732`](https://github.com/ds-horizon/react-native-fast-image/pull/732)
- release(version): Release 8.3.3 [skip ci] [`df823c7`](https://github.com/ds-horizon/react-native-fast-image/commit/df823c798933faa7e5b9902914370ff04f703674)

#### [v8.3.2](https://github.com/ds-horizon/react-native-fast-image/compare/v8.3.1...v8.3.2)

> 17 July 2020

- fix(android): remove explicit use of UI thread [`#698`](https://github.com/ds-horizon/react-native-fast-image/pull/698)
- release(version): Release 8.3.2 [skip ci] [`a53f3ab`](https://github.com/ds-horizon/react-native-fast-image/commit/a53f3ab8bd171739c00bbe4ef2c1e5aa8aa7ce41)

#### [v8.3.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.3.0...v8.3.1)

> 17 July 2020

- docs: update status badge [skip ci] [`7314947`](https://github.com/ds-horizon/react-native-fast-image/commit/7314947234265575870a2d602061a79443b5d49d)
- release(version): Release 8.3.1 [skip ci] [`250b4e5`](https://github.com/ds-horizon/react-native-fast-image/commit/250b4e5539ca84e8e17a50f1e22fb8439dbcb263)
- fix(android): make center ResizeMode work correctly [`d648ef8`](https://github.com/ds-horizon/react-native-fast-image/commit/d648ef85045fb97d8d1f6a637e915fa912a6c6c9)

#### [v8.3.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.2.2...v8.3.0)

> 17 July 2020

- feat(ios): allow for for per-image-request-headers [`#691`](https://github.com/ds-horizon/react-native-fast-image/pull/691)
- release(version): Release 8.3.0 [skip ci] [`866274f`](https://github.com/ds-horizon/react-native-fast-image/commit/866274ff3c84c14c69acc87032d21db8b4b96961)

#### [v8.2.2](https://github.com/ds-horizon/react-native-fast-image/compare/v8.2.1...v8.2.2)

> 17 July 2020

- fix: accessibilityIgnoresInvertColors prop not recognised when using TypeScript [`#666`](https://github.com/ds-horizon/react-native-fast-image/pull/666)
- release(version): Release 8.2.2 [skip ci] [`0e29d83`](https://github.com/ds-horizon/react-native-fast-image/commit/0e29d83b7d67afd2e1357bb5757250129f085a54)

#### [v8.2.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.2.0...v8.2.1)

> 17 July 2020

- release(version): Release 8.2.1 [skip ci] [`184eecb`](https://github.com/ds-horizon/react-native-fast-image/commit/184eecb1210ce548f333c38dbfd17f63222dc188)
- fix: remove cache property if using fallback [`ba0f238`](https://github.com/ds-horizon/react-native-fast-image/commit/ba0f238821ba23517b8e62e759f685b8cd67c0c6)

#### [v8.2.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.10...v8.2.0)

> 17 July 2020

- feat: export ResizeMode and Priority types [`#678`](https://github.com/ds-horizon/react-native-fast-image/pull/678)
- release(version): Release 8.2.0 [skip ci] [`2eb3199`](https://github.com/ds-horizon/react-native-fast-image/commit/2eb31991433163ea1952a634af329da19fb364f3)

#### [v8.1.10](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.9...v8.1.10)

> 17 July 2020

- fix: update SDWebImage and SDWebImageWebPCoder [`#689`](https://github.com/ds-horizon/react-native-fast-image/pull/689)
- release(version): Release 8.1.10 [skip ci] [`1fd5300`](https://github.com/ds-horizon/react-native-fast-image/commit/1fd53007efc23a77236301a348b8126a2d15c760)

#### [v8.1.9](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.8...v8.1.9)

> 17 July 2020

- release(version): Release 8.1.9 [skip ci] [`0fd9f77`](https://github.com/ds-horizon/react-native-fast-image/commit/0fd9f773ee2e44c9e7d5691c239887699dccf615)
- fix: wrong cache type (#688) [skip ci] [`94e2256`](https://github.com/ds-horizon/react-native-fast-image/commit/94e2256da234d535e88172ce325c89e7cb69fc6e)

#### [v8.1.8](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.7...v8.1.8)

> 17 July 2020

- fix: peer dependency warning [`#653`](https://github.com/ds-horizon/react-native-fast-image/pull/653)
- release(version): Release 8.1.8 [skip ci] [`c23204f`](https://github.com/ds-horizon/react-native-fast-image/commit/c23204f52140d818914890589cdddb3ef5e4bf6e)

#### [v8.1.7](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.6...v8.1.7)

> 17 July 2020

- release(version): Release 8.1.7 [skip ci] [`6067b7d`](https://github.com/ds-horizon/react-native-fast-image/commit/6067b7dd3c04a3fa65e59a9e1bd28a6d51bf3da6)
- docs: fix changelog [`4ee0000`](https://github.com/ds-horizon/react-native-fast-image/commit/4ee0000048eea0526ba259b8d11966ed58b2fd25)

#### [v8.1.6](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.5...v8.1.6)

> 17 July 2020

- build: use dv-scripts [`#707`](https://github.com/ds-horizon/react-native-fast-image/pull/707)
- chore: deduplicate dependencies [`0d34e62`](https://github.com/ds-horizon/react-native-fast-image/commit/0d34e620693be97da56e2d7421261a9486d4b711)
- release(version): Release 8.1.6 [skip ci] [`8f14faf`](https://github.com/ds-horizon/react-native-fast-image/commit/8f14faffdbc73d3cc3c1978911eab4d896622427)

#### [v8.1.5](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.4...v8.1.5)

> 14 March 2020

- fix: Updates SDWebImageWebPCoder. [`#628`](https://github.com/ds-horizon/react-native-fast-image/pull/628)
- chore(release): 8.1.5 [skip ci] [`cde7af5`](https://github.com/ds-horizon/react-native-fast-image/commit/cde7af5178356508d78be6553cf10245b2fc314f)

#### [v8.1.4](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.3...v8.1.4)

> 12 March 2020

- fix: Bump Glide version number to v4.11.0. [`#649`](https://github.com/ds-horizon/react-native-fast-image/pull/649)
- chore: Convert example to TypeScript [`#648`](https://github.com/ds-horizon/react-native-fast-image/pull/648)
- fix: Bump Glide version number to v4.11.0. (#649) [`#536`](https://github.com/ds-horizon/react-native-fast-image/issues/536)
- chore(release): 8.1.4 [skip ci] [`af667d2`](https://github.com/ds-horizon/react-native-fast-image/commit/af667d2f8acbe9638b78d0bfba4767298e1df7ae)

#### [v8.1.3](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.2...v8.1.3)

> 12 March 2020

- fix: Replace 'Component' with 'ComponentType' [`#647`](https://github.com/ds-horizon/react-native-fast-image/pull/647)
- chore(release): 8.1.3 [skip ci] [`dc3d66e`](https://github.com/ds-horizon/react-native-fast-image/commit/dc3d66e1a0119fc8f48db525efaa236365d34f3d)

#### [v8.1.2](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.1...v8.1.2)

> 9 March 2020

- chore(release): 8.1.2 [skip ci] [`b4b1173`](https://github.com/ds-horizon/react-native-fast-image/commit/b4b1173dccd0d8415bd24d90dace49799f33a571)
- fix: Fixes podspec syntax. [`b627646`](https://github.com/ds-horizon/react-native-fast-image/commit/b627646001e334ece89c49e0aa6bc403f496f8ce)

#### [v8.1.1](https://github.com/ds-horizon/react-native-fast-image/compare/v8.1.0...v8.1.1)

> 9 March 2020

- fix: Add git tag to CocoaPods source property [`#601`](https://github.com/ds-horizon/react-native-fast-image/pull/601)
- chore(release): 8.1.1 [skip ci] [`5d4bd05`](https://github.com/ds-horizon/react-native-fast-image/commit/5d4bd053c0f09bbf2bd479d8010e5a3acde03007)

#### [v8.1.0](https://github.com/ds-horizon/react-native-fast-image/compare/v8.0.0...v8.1.0)

> 9 March 2020

- feat: converts to TypeScript [`#642`](https://github.com/ds-horizon/react-native-fast-image/pull/642)
- chore: Upgrade dependencies. [`#641`](https://github.com/ds-horizon/react-native-fast-image/pull/641)
- chore: Upgrade example dependencies. [`#640`](https://github.com/ds-horizon/react-native-fast-image/pull/640)
- chore: Update example to React Native 0.61.5. [`#639`](https://github.com/ds-horizon/react-native-fast-image/pull/639)
- chore: Update roadmap with notes on cache paths. [`#589`](https://github.com/ds-horizon/react-native-fast-image/pull/589)
- chore: Add docs for changing versions of things. [`ebe277c`](https://github.com/ds-horizon/react-native-fast-image/commit/ebe277c50bc97effe963201183a1a1021c1c2324)
- chore: Refactor Gradle variables. [`227d6e4`](https://github.com/ds-horizon/react-native-fast-image/commit/227d6e4e945e9b7a76f001b6b8ae2008fe7fa6af)
- chore(release): 8.1.0 [skip ci] [`c345b6a`](https://github.com/ds-horizon/react-native-fast-image/commit/c345b6a97c233fdf0e41840a8949b906811feb10)

### [v8.0.0](https://github.com/ds-horizon/react-native-fast-image/compare/v7.0.2...v8.0.0)

> 20 October 2019

- feat: Add cookie support for iOS. [`#284`](https://github.com/ds-horizon/react-native-fast-image/pull/284)
- chore: Add roadmap. [`#587`](https://github.com/ds-horizon/react-native-fast-image/pull/587)
- chore: Add yarn policy. [`#577`](https://github.com/ds-horizon/react-native-fast-image/pull/577)
- chore: Document installing pods as troubleshooting method. [`#534`](https://github.com/ds-horizon/react-native-fast-image/issues/534) [`#257`](https://github.com/ds-horizon/react-native-fast-image/issues/257)
- chore(release): 8.0.0 [skip ci] [`70d3a38`](https://github.com/ds-horizon/react-native-fast-image/commit/70d3a382eedf40337bd433b9cf3dbf8e1f50b00e)
- chore: Add note to readme. [`7b8c0c8`](https://github.com/ds-horizon/react-native-fast-image/commit/7b8c0c841a919ff2a2ab68e4d7b4489b37e74f69)

#### [v7.0.2](https://github.com/ds-horizon/react-native-fast-image/compare/v7.0.1...v7.0.2)

> 5 July 2019

- fix: Fix peer dependency and remove prop-types. [`44a4c8b`](https://github.com/ds-horizon/react-native-fast-image/commit/44a4c8b3409ea206a8ede0e8e9e0ec0f32c9b5b1)
- chore(release): 7.0.2 [skip ci] [`f7dc6eb`](https://github.com/ds-horizon/react-native-fast-image/commit/f7dc6ebbefe5d6085eea4f3d4c48c2389e58c3fe)

#### [v7.0.1](https://github.com/ds-horizon/react-native-fast-image/compare/v7.0.0...v7.0.1)

> 5 July 2019

- fix: Fix IllegalArgumentException crash (Android). [`#511`](https://github.com/ds-horizon/react-native-fast-image/pull/511)
- chore(release): 7.0.1 [skip ci] [`81ab7d5`](https://github.com/ds-horizon/react-native-fast-image/commit/81ab7d5539ad88f0d2e45fdf7f36542e3a7c26d7)
- docs: Remove react-native link from instructions. [`41de1fd`](https://github.com/ds-horizon/react-native-fast-image/commit/41de1fdc6d241d20ce77c5422b9a72d0e433e16a)
- docs: Remove duplication. [`a5e3b9e`](https://github.com/ds-horizon/react-native-fast-image/commit/a5e3b9e64bc60c6e24bb22a416f3e27b76ec2595)

### [v7.0.0](https://github.com/ds-horizon/react-native-fast-image/compare/v6.1.1...v7.0.0)

> 5 July 2019

- feat: Upgrade to React Native 0.60.0 / CocoaPods / Android X. [`#513`](https://github.com/ds-horizon/react-native-fast-image/pull/513)
- chore: Add demo of how to use WebP on iOS. [`#488`](https://github.com/ds-horizon/react-native-fast-image/pull/488)
- chore: Remove package-lock.json files. [`df76905`](https://github.com/ds-horizon/react-native-fast-image/commit/df769056f44bc0e49032edcd8f3b6c26de5472cb)
- chore(release): 7.0.0 [skip ci] [`5868e5b`](https://github.com/ds-horizon/react-native-fast-image/commit/5868e5ba8776e94ee5a248674ea88cbc6d24f899)

#### [v6.1.1](https://github.com/ds-horizon/react-native-fast-image/compare/v6.1.0...v6.1.1)

> 3 July 2019

- fix: Loading images by reverting "bug: Use device scale when loading images.". [`#509`](https://github.com/ds-horizon/react-native-fast-image/issues/509)
- chore: Update dependencies. [`fa62474`](https://github.com/ds-horizon/react-native-fast-image/commit/fa62474ec49d1bccf119eae9bd4f44868cc73958)
- chore: Update more development dependencies. [`ba958f2`](https://github.com/ds-horizon/react-native-fast-image/commit/ba958f2a4551c54440ad11d55c5ee5a3923827b8)
- chore(release): 6.1.1 [skip ci] [`4fa62bb`](https://github.com/ds-horizon/react-native-fast-image/commit/4fa62bb09f65d967977f25ef87eda5f8b7c18cd6)

#### [v6.1.0](https://github.com/ds-horizon/react-native-fast-image/compare/v6.0.5...v6.1.0)

> 30 June 2019

- feat: Add tvOS target. [`#486`](https://github.com/ds-horizon/react-native-fast-image/pull/486)
- chore(release): 6.1.0 [skip ci] [`b11fcd1`](https://github.com/ds-horizon/react-native-fast-image/commit/b11fcd1b1c29e80207b7a8b4328129f8b6bd2178)

#### [v6.0.5](https://github.com/ds-horizon/react-native-fast-image/compare/v6.0.4...v6.0.5)

> 28 June 2019

- chore(release): 6.0.5 [skip ci] [`837c90b`](https://github.com/ds-horizon/react-native-fast-image/commit/837c90b922c4351ced7515942369a2dd60d5ec4a)
- fix: Fix incorrect syntax. [`11f6047`](https://github.com/ds-horizon/react-native-fast-image/commit/11f6047658334ba3c73e089413acb47c7a0493f4)

#### [v6.0.4](https://github.com/ds-horizon/react-native-fast-image/compare/v6.0.3...v6.0.4)

> 28 June 2019

- fix: Fix setting props order issue for iOS. [`#303`](https://github.com/ds-horizon/react-native-fast-image/pull/303)
- fix: Fix setting props order issue for iOS. (#303) [`#304`](https://github.com/ds-horizon/react-native-fast-image/issues/304)
- bug: Use device scale when loading images. [`5cb5d6b`](https://github.com/ds-horizon/react-native-fast-image/commit/5cb5d6bab3a8da533114de4b643797a6981c71bd)
- chore(release): 6.0.4 [skip ci] [`7dc1e65`](https://github.com/ds-horizon/react-native-fast-image/commit/7dc1e658b47f3523cb496733e270ee5eb7756c7b)

#### [v6.0.3](https://github.com/ds-horizon/react-native-fast-image/compare/v6.0.2...v6.0.3)

> 3 June 2019

- chore(release): 6.0.3 [skip ci] [`7f080bf`](https://github.com/ds-horizon/react-native-fast-image/commit/7f080bf0e1a91f39d7fe22c3f5da44375c59adc6)
- fix: Add tintColor type definition. [`4adf42f`](https://github.com/ds-horizon/react-native-fast-image/commit/4adf42f935372c9434851a122ed8fdb8ec0ecaf8)

#### [v6.0.2](https://github.com/ds-horizon/react-native-fast-image/compare/v6.0.1...v6.0.2)

> 3 June 2019

- fix: Upgrade vendored SDWebImage to v5.0.5. [`#489`](https://github.com/ds-horizon/react-native-fast-image/issues/489)
- chore(release): 6.0.2 [skip ci] [`4e87892`](https://github.com/ds-horizon/react-native-fast-image/commit/4e8789215976366c7e44dfdf68837556afe905f3)
- docs: Add note about build issue. [`e6c8cee`](https://github.com/ds-horizon/react-native-fast-image/commit/e6c8ceead78d40a22765c150c65ec3c5107c60ce)

#### [v6.0.1](https://github.com/ds-horizon/react-native-fast-image/compare/v6.0.0...v6.0.1)

> 25 May 2019

- fix: Fix local resource cache issue on Android. [`#472`](https://github.com/ds-horizon/react-native-fast-image/pull/472)
- docs: Fix proguard rules. [`#478`](https://github.com/ds-horizon/react-native-fast-image/pull/478)
- fix: Fix local resource cache issue on Android. (#472) [`#402`](https://github.com/ds-horizon/react-native-fast-image/issues/402)
- chore(release): 6.0.1 [skip ci] [`2847936`](https://github.com/ds-horizon/react-native-fast-image/commit/28479363738ab748c04f7ea8add98e852ef9f664)
- Update README.md [`5fbb4a7`](https://github.com/ds-horizon/react-native-fast-image/commit/5fbb4a7800e8678e2ad2dc6d522dd97a0fc12fe1)
- Update README.md [`8f93fb7`](https://github.com/ds-horizon/react-native-fast-image/commit/8f93fb7e082e0f8874995e2144083e2112fdad06)

### [v6.0.0](https://github.com/ds-horizon/react-native-fast-image/compare/v5.4.2...v6.0.0)

> 8 May 2019

- feat: Upgrade to SDWebImage 5.0. [`#454`](https://github.com/ds-horizon/react-native-fast-image/pull/454)
- feat: Upgrade to SDWebImage 5.0. (#454) [`#447`](https://github.com/ds-horizon/react-native-fast-image/issues/447)
- chore: Update issue templates. [`14ea01c`](https://github.com/ds-horizon/react-native-fast-image/commit/14ea01c56e53cc5891d9ec26b27f1a32831ed7f8)
- chore(release): 6.0.0 [skip ci] [`f1ea749`](https://github.com/ds-horizon/react-native-fast-image/commit/f1ea74950d831601b97420183f21fb0752c9d357)

#### [v5.4.2](https://github.com/ds-horizon/react-native-fast-image/compare/v5.4.1...v5.4.2)

> 3 May 2019

- fix: Fix dependency versions not specified in podfile. [`#456`](https://github.com/ds-horizon/react-native-fast-image/issues/456)
- chore(release): 5.4.2 [skip ci] [`42e811a`](https://github.com/ds-horizon/react-native-fast-image/commit/42e811a01ed84302687367d034f00f62b91bfe2a)

#### [v5.4.1](https://github.com/ds-horizon/react-native-fast-image/compare/v5.4.0...v5.4.1)

> 3 May 2019

- fix: Fix wildcard peer dependencies. [`#440`](https://github.com/ds-horizon/react-native-fast-image/issues/440)
- chore(release): 5.4.1 [skip ci] [`14f4e4e`](https://github.com/ds-horizon/react-native-fast-image/commit/14f4e4e9c864824cb31604ee65c13dbe0f272276)

#### [v5.4.0](https://github.com/ds-horizon/react-native-fast-image/compare/v5.3.0...v5.4.0)

> 3 May 2019

- feat: Add tint color support. [`#124`](https://github.com/ds-horizon/react-native-fast-image/issues/124)
- chore(release): 5.4.0 [skip ci] [`298759f`](https://github.com/ds-horizon/react-native-fast-image/commit/298759fd4ea3012a496d673a1af87f810af8ef09)
- docs: Update proguard rules. [`161ba99`](https://github.com/ds-horizon/react-native-fast-image/commit/161ba99c3dfb59ed1dfda86c4cc3baa204f114e5)

#### [v5.3.0](https://github.com/ds-horizon/react-native-fast-image/compare/v5.2.1...v5.3.0)

> 23 April 2019

- feat: Upgrade example apps. [`#453`](https://github.com/ds-horizon/react-native-fast-image/pull/453)
- revert: Remove functionality for notifying other images on load. [`#452`](https://github.com/ds-horizon/react-native-fast-image/pull/452)
- fix: Fix memory leak on iOS. [`#433`](https://github.com/ds-horizon/react-native-fast-image/pull/433)
- Upgrade example app. [`#451`](https://github.com/ds-horizon/react-native-fast-image/pull/451)
- chore: Upgrade dependencies. [`#450`](https://github.com/ds-horizon/react-native-fast-image/pull/450)
- Make changelog consistent. [`bd53ff1`](https://github.com/ds-horizon/react-native-fast-image/commit/bd53ff1d1e25d169c7fe52860657d69f4bc01df9)
- chore(release): 5.3.0 [skip ci] [`2a3438c`](https://github.com/ds-horizon/react-native-fast-image/commit/2a3438c0d0b81c81116d2e73ad7cf871da0662dd)
- Fix changelog. [`f7a30e4`](https://github.com/ds-horizon/react-native-fast-image/commit/f7a30e4945993e65ed382c46f6f076016edbad59)

#### [v5.2.1](https://github.com/ds-horizon/react-native-fast-image/compare/v5.2.0...v5.2.1)

> 21 April 2019

- perf: Use React.memo for FastImage. [`#449`](https://github.com/ds-horizon/react-native-fast-image/pull/449)
- chore(release): 5.2.1 [skip ci] [`0e2f3bb`](https://github.com/ds-horizon/react-native-fast-image/commit/0e2f3bb5ef6474ac4fe8ef7c0065aeb6a1cce706)

#### [v5.2.0](https://github.com/ds-horizon/react-native-fast-image/compare/v5.1.4...v5.2.0)

> 25 February 2019

- feat: Use forwardRef to allow access to ref.measure and others. [`#419`](https://github.com/ds-horizon/react-native-fast-image/pull/419)
- feat: Use forwardRef to allow access to ref.measure and others. (#419) [`#69`](https://github.com/ds-horizon/react-native-fast-image/issues/69)
- chore(release): 5.2.0 [skip ci] [`89c0e2e`](https://github.com/ds-horizon/react-native-fast-image/commit/89c0e2e9acfc7a5d334811c43409a81c714011fa)

#### [v5.1.4](https://github.com/ds-horizon/react-native-fast-image/compare/v5.1.3...v5.1.4)

> 25 February 2019

- fix: Fix fallback prop not working. [`#420`](https://github.com/ds-horizon/react-native-fast-image/pull/420)
- chore: Add animated WebP example. [`#418`](https://github.com/ds-horizon/react-native-fast-image/pull/418)
- chore: Update dependencies. [`#416`](https://github.com/ds-horizon/react-native-fast-image/pull/416)
- chore: Update dependencies. [`#415`](https://github.com/ds-horizon/react-native-fast-image/pull/415)
- chore: More social. [`f672f0b`](https://github.com/ds-horizon/react-native-fast-image/commit/f672f0bc8591ad74d605b3d42ed08e061eb5b046)
- chore(release): 5.1.4 [skip ci] [`58add0e`](https://github.com/ds-horizon/react-native-fast-image/commit/58add0ed3cd7eb6da7f6e7a67c6f5536ac41b901)
- chore: Fix displayNames in examples. [`52d1d8b`](https://github.com/ds-horizon/react-native-fast-image/commit/52d1d8b58b03cf803b6fe7b8041bf122573b21c6)

#### [v5.1.3](https://github.com/ds-horizon/react-native-fast-image/compare/v5.1.2...v5.1.3)

> 22 February 2019

- fix: Fixes WebP rendering on iOS 12. [`#412`](https://github.com/ds-horizon/react-native-fast-image/pull/412)
- chore: Use ESLint. [`#414`](https://github.com/ds-horizon/react-native-fast-image/pull/414)
- chore: Test fallback prop. [`#413`](https://github.com/ds-horizon/react-native-fast-image/pull/413)
- ci: Update changelog automatically. [`#383`](https://github.com/ds-horizon/react-native-fast-image/pull/383)
- chore: Only use lcov report. [`9bc9b71`](https://github.com/ds-horizon/react-native-fast-image/commit/9bc9b711d5eda659b9c0e1760bb03f2815eb15a7)
- chore(release): 5.1.3 [skip ci] [`4502bc8`](https://github.com/ds-horizon/react-native-fast-image/commit/4502bc8e66018106121898eb4707330a1fdc26ff)
- chore: Upload code coverage. [`03d07fe`](https://github.com/ds-horizon/react-native-fast-image/commit/03d07feed3e82c56b16a9e94e33e1ab21152c44c)

#### [v5.1.2](https://github.com/ds-horizon/react-native-fast-image/compare/v5.1.1...v5.1.2)

> 30 December 2018

- fix: Fixes cacheControl types. [`#382`](https://github.com/ds-horizon/react-native-fast-image/pull/382)
- style: Use prettier to format more files. [`#381`](https://github.com/ds-horizon/react-native-fast-image/pull/381)
- fix: Fixes cacheControl types. (#382) [`#325`](https://github.com/ds-horizon/react-native-fast-image/issues/325)
- chore(releasing): Add conventional commit. [`e3d03b4`](https://github.com/ds-horizon/react-native-fast-image/commit/e3d03b463eaf2b0a837db37e919d8ba96be628f3)
- Format changelog with prettier. [`141a4a0`](https://github.com/ds-horizon/react-native-fast-image/commit/141a4a02931ba9e02ee169ba4543e77d924b6a79)
- ci: Setup releases from CircleCI. [`9b7b5ac`](https://github.com/ds-horizon/react-native-fast-image/commit/9b7b5ac4e73eb9ddefb1ec5cac3e61d0a9eba26d)

#### [v5.1.1](https://github.com/ds-horizon/react-native-fast-image/compare/v5.1.0...v5.1.1)

> 13 November 2018

- Change usage of compile to implementation in docs (gradle). [`#332`](https://github.com/ds-horizon/react-native-fast-image/pull/332)
- Add .idea/ to .npmignore. [`#344`](https://github.com/ds-horizon/react-native-fast-image/pull/344)
- Fix file:// scheme on Android. [`#345`](https://github.com/ds-horizon/react-native-fast-image/pull/345)
- Update dependencies. [`7335822`](https://github.com/ds-horizon/react-native-fast-image/commit/73358227923c6345f2face54b50d321603fa3c81)
- Update example. [`0d66f4c`](https://github.com/ds-horizon/react-native-fast-image/commit/0d66f4cb06cf4a0cf9345c918a7b9bd8aea7540e)
- Update changelog. [`bb76325`](https://github.com/ds-horizon/react-native-fast-image/commit/bb76325794c9081b905c4f6e653c07bc9209fc80)

#### [v5.1.0](https://github.com/ds-horizon/react-native-fast-image/compare/v5.0.11...v5.1.0)

> 6 November 2018

- Update dependencies. [`#341`](https://github.com/ds-horizon/react-native-fast-image/pull/341)
- Improve error message when bundled resource could not found. [`#328`](https://github.com/ds-horizon/react-native-fast-image/pull/328)
- Fix android photo library images not working. [`#339`](https://github.com/ds-horizon/react-native-fast-image/pull/339)
- Upgrade example app. [`#340`](https://github.com/ds-horizon/react-native-fast-image/pull/340)
- Fix local images in production builds. [`#324`](https://github.com/ds-horizon/react-native-fast-image/pull/324)
- Make yarn link work with example project. [`#323`](https://github.com/ds-horizon/react-native-fast-image/pull/323)
- Fixed crash where activity was already destroyed before react-native could cleanup view manager [`#272`](https://github.com/ds-horizon/react-native-fast-image/pull/272)
- Fix flow types [`#320`](https://github.com/ds-horizon/react-native-fast-image/pull/320)
- Upgrade dependencies. [`#316`](https://github.com/ds-horizon/react-native-fast-image/pull/316)
- Add release notes for 5.0.11. [`#315`](https://github.com/ds-horizon/react-native-fast-image/pull/315)
- Add a changelog. [`#313`](https://github.com/ds-horizon/react-native-fast-image/pull/313)
- Fix local images in production builds. (#324) [`#273`](https://github.com/ds-horizon/react-native-fast-image/issues/273) [`#296`](https://github.com/ds-horizon/react-native-fast-image/issues/296) [`#246`](https://github.com/ds-horizon/react-native-fast-image/issues/246)
- Add caching on CircleCI. [`038e94e`](https://github.com/ds-horizon/react-native-fast-image/commit/038e94e637267fa93fbaa9f7308e4972a61c449e)
- Update changelog. [`535f06b`](https://github.com/ds-horizon/react-native-fast-image/commit/535f06b53556c44fbc8eb213b5a6bdcea8131701)
- Updated changelog. [`f40a6d4`](https://github.com/ds-horizon/react-native-fast-image/commit/f40a6d4c4e630f5a8f7b600944bc3a23ca40d7f8)

#### [v5.0.11](https://github.com/ds-horizon/react-native-fast-image/compare/v5.0.2...v5.0.11)

> 14 October 2018

- Fix cacheControl property in TypeScript types. [`#310`](https://github.com/ds-horizon/react-native-fast-image/pull/310)
- Upgrade examples. [`#309`](https://github.com/ds-horizon/react-native-fast-image/pull/309)
- Update obsolete compile to implementation and Exclude app dependencies from test configurations [`#250`](https://github.com/ds-horizon/react-native-fast-image/pull/250)
- Allow overwriting imageContainer styles. [`#286`](https://github.com/ds-horizon/react-native-fast-image/issues/286)
- Replace with clean examples. [`e68fe53`](https://github.com/ds-horizon/react-native-fast-image/commit/e68fe53fbeb06bd59670d2ec9faed9fd6215561a)
- Install dependencies and add example code. [`c0a784a`](https://github.com/ds-horizon/react-native-fast-image/commit/c0a784a683edd46dcabea594b8a34832e14c1c77)
- Upgrade dependencies. [`82a3aea`](https://github.com/ds-horizon/react-native-fast-image/commit/82a3aeaf2812c119f07978d0597afc948fe340b8)

#### [v5.0.2](https://github.com/ds-horizon/react-native-fast-image/compare/v5.0.1...v5.0.2)

> 23 August 2018

- Update dependencies. [`7edb454`](https://github.com/ds-horizon/react-native-fast-image/commit/7edb4544dd4a0a73dcb3782e43afc1f705fb4011)
- Update react native in example. [`203aaa5`](https://github.com/ds-horizon/react-native-fast-image/commit/203aaa5ddb89a2bc07cd556504a455a56c19f9e0)
- Fix tests. [`111c3aa`](https://github.com/ds-horizon/react-native-fast-image/commit/111c3aab15b584c6ec2f08759206c1cd9fa31940)

#### [v5.0.1](https://github.com/ds-horizon/react-native-fast-image/compare/v5.0.0...v5.0.1)

> 23 August 2018

- react-native link now targets react-native-fast-image [`#264`](https://github.com/ds-horizon/react-native-fast-image/pull/264)

### [v5.0.0](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.14...v5.0.0)

> 22 August 2018

- Fix cache enum names in README [`#251`](https://github.com/ds-horizon/react-native-fast-image/pull/251)
- make sure headers only accepts key value pairs [`#229`](https://github.com/ds-horizon/react-native-fast-image/pull/229)
- Fixed memory leaks [`#214`](https://github.com/ds-horizon/react-native-fast-image/pull/214)
- Specify type definition file path [`#216`](https://github.com/ds-horizon/react-native-fast-image/pull/216)
- Upgrade to glide 4 with progress listeners working. [`#201`](https://github.com/ds-horizon/react-native-fast-image/pull/201)
- More refactoring. [`01d52e4`](https://github.com/ds-horizon/react-native-fast-image/commit/01d52e43637a4f12abe72ff4d1e9ff4b2ee2121a)
- Show local images. [`fddee2c`](https://github.com/ds-horizon/react-native-fast-image/commit/fddee2c583c0978d0e7e91cdf4d6c87629afe015)
- Upgrade dependencies. [`9fae3bf`](https://github.com/ds-horizon/react-native-fast-image/commit/9fae3bf697e2ee8da3dfceab3df23b96062ab424)

#### [v4.0.14](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.13...v4.0.14)

> 9 May 2018

- Fix example margins and add labels to resizeMode example. [`60511af`](https://github.com/ds-horizon/react-native-fast-image/commit/60511af352d0673cfb507d36a951ba63713619ad)

#### [v4.0.13](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.12...v4.0.13)

> 9 May 2018

- * sync initial resizeMode & contentMode [`#193`](https://github.com/ds-horizon/react-native-fast-image/pull/193)
- Use prettier config file. [`b2fb48b`](https://github.com/ds-horizon/react-native-fast-image/commit/b2fb48bbe3f745526ccd2e85fc513b51175fe744)
- Use local package in example project. [`e8cfc7a`](https://github.com/ds-horizon/react-native-fast-image/commit/e8cfc7ae5d31589d7cbd8f52eb683096ff4d2ba8)
- Add resizeMode examples and refactor. [`7a34ed3`](https://github.com/ds-horizon/react-native-fast-image/commit/7a34ed3ec9e1794fc90aeea11ca8e9457453ba4c)

#### [v4.0.12](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.11...v4.0.12)

> 6 May 2018

- Revert change to android manifest. [`52ccc8c`](https://github.com/ds-horizon/react-native-fast-image/commit/52ccc8ce9a11f013634dfbe43c3c7d22e1382bea)
- Fix android project. [`bf67634`](https://github.com/ds-horizon/react-native-fast-image/commit/bf67634a44ddcd047c487c011b9aed5e4ac7ff84)
- Revert increasing buildToolsVersion and targetSdkVersion. [`a4e6ef3`](https://github.com/ds-horizon/react-native-fast-image/commit/a4e6ef3002319679d6faa95ca1314b2df36c433e)

#### [v4.0.11](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.10...v4.0.11)

> 6 May 2018

- Improve TypeScript types. [`75e3fd7`](https://github.com/ds-horizon/react-native-fast-image/commit/75e3fd7cd832ce5e571b0ce1374a47a4b4c632c4)
- Downgradle gradle. [`69d6c25`](https://github.com/ds-horizon/react-native-fast-image/commit/69d6c250c91ffec39a9cf420a4e4d8d94834bf87)
- Handle assets from asset library. [`466f43f`](https://github.com/ds-horizon/react-native-fast-image/commit/466f43f4aef74765ddc6e7740d4455748047acbf)

#### [v4.0.10](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.9...v4.0.10)

> 5 May 2018

- Handle photos from smart albums. [`243b33d`](https://github.com/ds-horizon/react-native-fast-image/commit/243b33db768b8afe4c58999db005600bda4a07dd)

#### [v4.0.9](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.8...v4.0.9)

> 5 May 2018

- Use OkHttpClientProvider to allow extending preconfigured clients. [`#101`](https://github.com/ds-horizon/react-native-fast-image/pull/101)
- Setup signing for example. [`0a7d771`](https://github.com/ds-horizon/react-native-fast-image/commit/0a7d771e8ff4200d8c2ec85bcc8e941453962d04)
- Fix status bar in example. [`b384002`](https://github.com/ds-horizon/react-native-fast-image/commit/b384002528f65bc62da63471f477d971e79bc723)
- Update example gifs. [`4912305`](https://github.com/ds-horizon/react-native-fast-image/commit/49123055721c48881842832bd05a7e529c82d253)

#### [v4.0.8](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.7...v4.0.8)

> 3 May 2018

- Handle content urls. [`236ca3e`](https://github.com/ds-horizon/react-native-fast-image/commit/236ca3e69e9ea3ca97d0743bbf6c0601617ed848)

#### [v4.0.7](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.6...v4.0.7)

> 3 May 2018

- Adding instructions to manually link. [`#179`](https://github.com/ds-horizon/react-native-fast-image/pull/179)
- Fix Animation bug. [`#186`](https://github.com/ds-horizon/react-native-fast-image/pull/186)
- Added null check on  getCurrentActivity()'s return value. [`#172`](https://github.com/ds-horizon/react-native-fast-image/pull/172)
- Using SDK Version variables from root project. [`#192`](https://github.com/ds-horizon/react-native-fast-image/pull/192)
- Update examples. [`d6a5cb0`](https://github.com/ds-horizon/react-native-fast-image/commit/d6a5cb03470f08f1d6861482066883857385ac5f)
- Move documentation on other linking methods into docs. [`2f014d2`](https://github.com/ds-horizon/react-native-fast-image/commit/2f014d2bcd686140f5d379b5e8e5125eefe0613f)
- Invert if to reduce nesting. [`be1564f`](https://github.com/ds-horizon/react-native-fast-image/commit/be1564fe54d859323981af0f0812988acd4242d0)

#### [v4.0.6](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.5...v4.0.6)

> 24 April 2018

- Fix other FLAnimatedImage header path. [`ac00fda`](https://github.com/ds-horizon/react-native-fast-image/commit/ac00fdaa6309f03afc3bf052584a99c18726d21e)

#### [v4.0.5](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.4...v4.0.5)

> 24 April 2018

- Add troubleshooting doc. [`d3e3a99`](https://github.com/ds-horizon/react-native-fast-image/commit/d3e3a9921189a45ea945f339e0f02b11c7f20062)
- Words. [`d71843d`](https://github.com/ds-horizon/react-native-fast-image/commit/d71843d79dbc7ccded55e28b39c549f4322c84e8)
- Use conditional import. [`084a414`](https://github.com/ds-horizon/react-native-fast-image/commit/084a41497d5688c7939f94be7d48d2f2ad74fb74)

#### [v4.0.4](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.3...v4.0.4)

> 21 April 2018

- Remove FLAnimatedImage from FastImage project. [`a2d9fe2`](https://github.com/ds-horizon/react-native-fast-image/commit/a2d9fe2c71693721fec56e9cfe258a373a651b71)
- Update package to avoid conflict. [`1e053e0`](https://github.com/ds-horizon/react-native-fast-image/commit/1e053e062aa1191985bcddb26fffdc682a838ec8)
- Fix FLAnimatedImage header search path. [`883dc06`](https://github.com/ds-horizon/react-native-fast-image/commit/883dc0664dfd6ca26a1b8bece161abd3b9184cf1)

#### [v4.0.3](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.2...v4.0.3)

> 20 April 2018

- Fix test for using local image. [`78a28cd`](https://github.com/ds-horizon/react-native-fast-image/commit/78a28cdb814db39942125ead19742695a35b7223)

#### [v4.0.2](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.1...v4.0.2)

> 19 April 2018

- Add border radius to TypeScript definitions. [`440e742`](https://github.com/ds-horizon/react-native-fast-image/commit/440e742216ede985ed8a7bbb7dad419668fe70f9)
- Remove unused borderRadius prop. [`3bbd332`](https://github.com/ds-horizon/react-native-fast-image/commit/3bbd33209caefe16268ed3f9bbe87e4d95cb40de)

#### [v4.0.1](https://github.com/ds-horizon/react-native-fast-image/compare/v4.0.0...v4.0.1)

> 19 April 2018

- fix bug :https://github.com/DylanVann/react-native-fast-image/issues/181 [`#182`](https://github.com/ds-horizon/react-native-fast-image/pull/182)
- fixed cannot display local image on android [`#169`](https://github.com/ds-horizon/react-native-fast-image/pull/169)
- Refactor onLoad event. [`c786be2`](https://github.com/ds-horizon/react-native-fast-image/commit/c786be22a59612bea4125fabcba51839ec6af624)
- MG: Release to v1.0.0 [`77578bf`](https://github.com/ds-horizon/react-native-fast-image/commit/77578bf7d317fdfec3cce35e78dfc99865159d6d)
- Reverse changes to readme. [`da7dfa0`](https://github.com/ds-horizon/react-native-fast-image/commit/da7dfa062ccbc7d9cdb3a8223db26a75b7189240)

### [v4.0.0](https://github.com/ds-horizon/react-native-fast-image/compare/v3.0.2...v4.0.0)

> 18 March 2018

- better Quality Decoding for Android [`#164`](https://github.com/ds-horizon/react-native-fast-image/pull/164)
- Revert "Upgrade android to Glide v4 " [`#168`](https://github.com/ds-horizon/react-native-fast-image/pull/168)
- Upgrade android to Glide v4  [`#82`](https://github.com/ds-horizon/react-native-fast-image/pull/82)
- Adding `Header Search Paths` to solve problems when: [`#111`](https://github.com/ds-horizon/react-native-fast-image/pull/111)
- Added resource width and height information to the onFastImageLoad an… [`#107`](https://github.com/ds-horizon/react-native-fast-image/pull/107)
- [iOS] Added CocoaPods compatibility [`#143`](https://github.com/ds-horizon/react-native-fast-image/pull/143)
- Create example folders / projects. [`b2bf91d`](https://github.com/ds-horizon/react-native-fast-image/commit/b2bf91d62b3f480e52e3a3a2bd875d53e7982d3a)
- Revert "deleted exampleCode" [`26042d4`](https://github.com/ds-horizon/react-native-fast-image/commit/26042d472afc03979a2ffc4f893600064b34d139)
- deleted exampleCode [`7eb051a`](https://github.com/ds-horizon/react-native-fast-image/commit/7eb051a752f8200be43190b7bbf432f713bb227d)

#### [v3.0.2](https://github.com/ds-horizon/react-native-fast-image/compare/v3.0.1...v3.0.2)

> 10 March 2018

- Update readme. [`a4ce9c0`](https://github.com/ds-horizon/react-native-fast-image/commit/a4ce9c0ec5cb40ea0c250633549609defd567baf)

#### [v3.0.1](https://github.com/ds-horizon/react-native-fast-image/compare/v3.0.0...v3.0.1)

> 10 March 2018

- Rename to index. Remove unused utils. [`961fa9b`](https://github.com/ds-horizon/react-native-fast-image/commit/961fa9b82ef622c84d70c32bbab0e054d8b6f893)

### [v3.0.0](https://github.com/ds-horizon/react-native-fast-image/compare/v2.2.6...v3.0.0)

> 10 March 2018

- Move example and example server. [`364869b`](https://github.com/ds-horizon/react-native-fast-image/commit/364869b4d82552ef1b4e343e25ee98ea546c1003)
- Update example react-native version. [`3938371`](https://github.com/ds-horizon/react-native-fast-image/commit/3938371219c49fd0261612400f59fe891f94317c)
- Update start command and lockfile. [`20e709e`](https://github.com/ds-horizon/react-native-fast-image/commit/20e709e9a848f118bc2b499f341404ea79ff2542)

#### [v2.2.6](https://github.com/ds-horizon/react-native-fast-image/compare/v2.2.5...v2.2.6)

> 7 March 2018

- iOS: Ensure onLoad and onLoadEnd get called [`#74`](https://github.com/ds-horizon/react-native-fast-image/pull/74)
- Update project iOS project team. [`438fd11`](https://github.com/ds-horizon/react-native-fast-image/commit/438fd11dc198c6f48e2d83c50f80e48cf9e1c1df)
- Make property names consistent and add example. [`8cafd67`](https://github.com/ds-horizon/react-native-fast-image/commit/8cafd670bf6ea5cc2fda3947de90115f08ec3b51)
- Fix merge issues. [`763e811`](https://github.com/ds-horizon/react-native-fast-image/commit/763e811893ae18897831af04f67fb8003e0ddf8a)

#### [v2.2.5](https://github.com/ds-horizon/react-native-fast-image/compare/v2.2.4...v2.2.5)

> 13 February 2018

- Update how-is-caching-handled.md [`32c5134`](https://github.com/ds-horizon/react-native-fast-image/commit/32c5134b6839ed93ee27e6290d3ea8bbb82d52b1)
- Add borderRadius to type definitions. [`9fe58bc`](https://github.com/ds-horizon/react-native-fast-image/commit/9fe58bc7f3155c918b5787faf13820cee3753d33)

#### [v2.2.4](https://github.com/ds-horizon/react-native-fast-image/compare/v2.2.3...v2.2.4)

> 31 January 2018

- Fix typings for enums. [`82ce824`](https://github.com/ds-horizon/react-native-fast-image/commit/82ce8246c0dc62035bb83445344b832dcaeb8ee9)

#### [v2.2.3](https://github.com/ds-horizon/react-native-fast-image/compare/v2.2.2...v2.2.3)

> 31 January 2018

- Remove unused typelevel-ts. [`beea38e`](https://github.com/ds-horizon/react-native-fast-image/commit/beea38eb81c64b73a6213ab11080f8159e594218)

#### [v2.2.2](https://github.com/ds-horizon/react-native-fast-image/compare/v2.2.1...v2.2.2)

> 31 January 2018

- Refactor typings. [`ac66749`](https://github.com/ds-horizon/react-native-fast-image/commit/ac667495d250d8e88d6b2437703c0f2838ffc35e)

#### [v2.2.1](https://github.com/ds-horizon/react-native-fast-image/compare/v2.2.0...v2.2.1)

> 31 January 2018

- Add types to included files. [`7e7412e`](https://github.com/ds-horizon/react-native-fast-image/commit/7e7412e1f77ca1c6c5bacd9fe3e9a42bb91b5e85)

#### [v2.2.0](https://github.com/ds-horizon/react-native-fast-image/compare/v2.1.4...v2.2.0)

> 31 January 2018

- Created types definition. [`#116`](https://github.com/ds-horizon/react-native-fast-image/pull/116)
- Created types definition [`f5422f8`](https://github.com/ds-horizon/react-native-fast-image/commit/f5422f851d428c8b60ca170a682164a32ffa4bb9)
- Add test for not passing a uri. [`99173cd`](https://github.com/ds-horizon/react-native-fast-image/commit/99173cd0f51244ca53c816b5e6cf8151f8e39832)
- Added typelevel to dev deps [`0b5e16a`](https://github.com/ds-horizon/react-native-fast-image/commit/0b5e16a1cedcb3d220b1d85e78abe03ce41895fe)

#### [v2.1.4](https://github.com/ds-horizon/react-native-fast-image/compare/v2.1.3...v2.1.4)

> 31 January 2018

- Fix style prop not being passed to Image component. [`#132`](https://github.com/ds-horizon/react-native-fast-image/pull/132)
- Fix documentation for default resize mode. [`#105`](https://github.com/ds-horizon/react-native-fast-image/pull/105)
- Fix style prop not being passed to Image component [`#130`](https://github.com/ds-horizon/react-native-fast-image/issues/130)
- Add documentation on how caching is handled. [`8aa6c6b`](https://github.com/ds-horizon/react-native-fast-image/commit/8aa6c6bc13ae48d3116ab19ddb4947ad108ae964)
- Fix documentation for default resize mode [`0778939`](https://github.com/ds-horizon/react-native-fast-image/commit/0778939658222478fd490146742ca5c7a279a385)
- Fix prop order to be consistent. [`507df3d`](https://github.com/ds-horizon/react-native-fast-image/commit/507df3db6a59769173b8c53892d653359450a1c4)

#### [v2.1.3](https://github.com/ds-horizon/react-native-fast-image/compare/v2.1.2...v2.1.3)

> 30 January 2018

- Fix default resizeMode on Android. [`d4210c0`](https://github.com/ds-horizon/react-native-fast-image/commit/d4210c0ed03d7e0c49389f6abbb3c713e68e5142)

#### [v2.1.2](https://github.com/ds-horizon/react-native-fast-image/compare/v2.1.1...v2.1.2)

> 30 January 2018

- Add rectangular border radius example. [`e8f6df9`](https://github.com/ds-horizon/react-native-fast-image/commit/e8f6df93b2e920d81b20f3a8f03c49358572175a)
- Fix tests. [`1946199`](https://github.com/ds-horizon/react-native-fast-image/commit/194619921b1e81b524036c6cd40ab15458af2a9c)
- Fix android caching / preloading. [`de4f40a`](https://github.com/ds-horizon/react-native-fast-image/commit/de4f40a3a30a95fb8cdab714735501650e335dd9)

#### [v2.1.1](https://github.com/ds-horizon/react-native-fast-image/compare/v2.1.0...v2.1.1)

> 30 January 2018

- Update readme. [`d4fb891`](https://github.com/ds-horizon/react-native-fast-image/commit/d4fb891a0763f565080b19b413ed7ef023e8d0e8)

#### [v2.1.0](https://github.com/ds-horizon/react-native-fast-image/compare/v2.0.0...v2.1.0)

> 30 January 2018

- 🔘 Add border radius support to android and refactor and update examples. [`3a33bda`](https://github.com/ds-horizon/react-native-fast-image/commit/3a33bdaa27b0d68fc2ee692b18d7f527e0f342f5)
- Put status bar underlay on main example page. [`82b4693`](https://github.com/ds-horizon/react-native-fast-image/commit/82b469369dcc2f45a7a3bd4c91dd3fd54473d3e3)
- Remove children support. [`2df16ca`](https://github.com/ds-horizon/react-native-fast-image/commit/2df16ca0385c4e8bae42f7b94456ae456e31d22d)

### [v2.0.0](https://github.com/ds-horizon/react-native-fast-image/compare/v1.0.0...v2.0.0)

> 30 November 2017

- Image resizing - Fixing resizemode support. [`#64`](https://github.com/ds-horizon/react-native-fast-image/pull/64)
- Allow number as source [`#30`](https://github.com/ds-horizon/react-native-fast-image/pull/30)
- Update the example app and docs. [`cf07dd2`](https://github.com/ds-horizon/react-native-fast-image/commit/cf07dd2a824b27224ac786c294c9fc7be36a7e22)
- Update dependencies. Remove support for View.propTypes. [`b4b1794`](https://github.com/ds-horizon/react-native-fast-image/commit/b4b17942585d49ecc66fef79125a3b24aba74a46)
- Update dependencies. [`d43330e`](https://github.com/ds-horizon/react-native-fast-image/commit/d43330eb7652d1374433206c0465a592a60686ce)

### [v1.0.0](https://github.com/ds-horizon/react-native-fast-image/compare/v0.1.4...v1.0.0)

> 8 August 2017

#### [v0.1.4](https://github.com/ds-horizon/react-native-fast-image/compare/v0.1.3...v0.1.4)

> 7 August 2017

- Fix adding more views as listeners for a URL. [`f21522c`](https://github.com/ds-horizon/react-native-fast-image/commit/f21522c4092c9ccf5a8c83e56f2c5c4ae3ddc1c8)
- Remove override of createJSModules [`367024b`](https://github.com/ds-horizon/react-native-fast-image/commit/367024bcbdd8571cab7c90e064b1b59cc21ef3a7)

#### [v0.1.3](https://github.com/ds-horizon/react-native-fast-image/compare/v0.1.2...v0.1.3)

> 7 August 2017

#### [v0.1.2](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.11...v0.1.2)

> 7 August 2017

- Feat/progress. [`#18`](https://github.com/ds-horizon/react-native-fast-image/pull/18)
- Update project to latest react native version. [`02fd00c`](https://github.com/ds-horizon/react-native-fast-image/commit/02fd00c4a6370a4d28a91961fac2e34180cd5589)
- Format with prettier. Remove PropTypes. Fix tests. [`7e0b966`](https://github.com/ds-horizon/react-native-fast-image/commit/7e0b96659519c778b6de821840d041f948d057f4)
- Add android progress callback. [`c643347`](https://github.com/ds-horizon/react-native-fast-image/commit/c643347d4c80e532017f448be93dd46b58e6fdd1)

#### [v0.0.11](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.9...v0.0.11)

> 20 June 2017

- Update React Native and add gif support to iOS. [`5a93fee`](https://github.com/ds-horizon/react-native-fast-image/commit/5a93fee689dffb546ea500a830c94efeaf3ad10d)
- Update to support preloading sources. [`46e08b4`](https://github.com/ds-horizon/react-native-fast-image/commit/46e08b46e259ad8c9667df39f5cc944d98491722)
- Enables prefetching images [`4c87fc0`](https://github.com/ds-horizon/react-native-fast-image/commit/4c87fc0337b24a929d9deb3d8f458db8ba1bb2d9)

#### [v0.0.9](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.8...v0.0.9)

> 3 May 2017

#### [v0.0.8](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.7...v0.0.8)

> 3 May 2017

- Run prettier. [`1f0acfc`](https://github.com/ds-horizon/react-native-fast-image/commit/1f0acfccf63c940874f6c5e003e217597630fa36)
- Fix submodule installation. [`fa53ed9`](https://github.com/ds-horizon/react-native-fast-image/commit/fa53ed94f17ed9316d76f14aa196fd1f9442becd)
- Remove unused image. [`a259e17`](https://github.com/ds-horizon/react-native-fast-image/commit/a259e17ae27826441afd0cc44626b10d30838fe4)

#### [v0.0.7](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.6...v0.0.7)

> 28 April 2017

- Move Libraries to Vendor. [`494b8db`](https://github.com/ds-horizon/react-native-fast-image/commit/494b8db09c5ae3869be924d26bfe5eb5ce37f775)
- Add development instructions, credits, and licenses sections. [`e1c7b98`](https://github.com/ds-horizon/react-native-fast-image/commit/e1c7b98362dcc964bbb3b815cc7c07bb1ddd9b09)
- Fix Xcode project. [`77cd58a`](https://github.com/ds-horizon/react-native-fast-image/commit/77cd58a272a4de5133e3cc323cf8accc6c1cbfee)

#### [v0.0.6](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.5...v0.0.6)

> 20 April 2017

- Fix root ref for plain Image component. [`abffb8f`](https://github.com/ds-horizon/react-native-fast-image/commit/abffb8fb28a0686b49150e052a9ad2fed3c0ea78)
- Update prettier test name. [`52405ea`](https://github.com/ds-horizon/react-native-fast-image/commit/52405ea616d742b8299968776712005f14848fa5)

#### [v0.0.5](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.4...v0.0.5)

> 19 April 2017

- 🐛 Forward setNativeProps. Makes this component work with TouchableOpacity. [`#1`](https://github.com/ds-horizon/react-native-fast-image/issues/1)
- Make README consistent. [`e2635f7`](https://github.com/ds-horizon/react-native-fast-image/commit/e2635f7a3d694a383903e31da9a46074496c9cb4)

#### [v0.0.4](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.3...v0.0.4)

> 18 April 2017

- Fix onLoad and onError on iOS. [`e98bacc`](https://github.com/ds-horizon/react-native-fast-image/commit/e98bacc84f1d5c643c561e4734099da3f763f7b8)

#### [v0.0.3](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.2...v0.0.3)

> 18 April 2017

- ✨ Run prettier. [`d36ad2d`](https://github.com/ds-horizon/react-native-fast-image/commit/d36ad2d351fdeaf23a6d5e1cf7f244ed76e733a6)
- ✨ Add prettier-check to test. [`9da1845`](https://github.com/ds-horizon/react-native-fast-image/commit/9da1845f3ba5b389acef082163bbca2e169848d7)
- 🗒 sort-package-json. [`d6c4687`](https://github.com/ds-horizon/react-native-fast-image/commit/d6c4687a5ce945ddd5cb038965b646e12609f3de)

#### [v0.0.2](https://github.com/ds-horizon/react-native-fast-image/compare/v0.0.1...v0.0.2)

> 17 April 2017

#### v0.0.1

> 17 April 2017

- 🚩 Initial commit. [`1ee6d37`](https://github.com/ds-horizon/react-native-fast-image/commit/1ee6d37bd4c22df6f305611ecdc86aa6306625e3)
- 📸 Add basic snapshot test. [`2ec2524`](https://github.com/ds-horizon/react-native-fast-image/commit/2ec252446da6b8022348e6ed30c7025043e9b3dc)
- ⭕ Add circle.yml. [`5f02ce5`](https://github.com/ds-horizon/react-native-fast-image/commit/5f02ce573c578e15b0550f844ee3ffb34f9da8d6)
