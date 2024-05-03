# Breez Liquid SDK — Swift Bindings

The [Breez Liquid SDK](https://github.com/breez/breez-liquid-sdk) enables mobile developers to integrate Liquid into their apps with a very shallow learning curve. More information can be found here: [breez/breez-liquid-sdk](https://github.com/breez/breez-liquid-sdk)

This repository maintains the Breez Liquid SDK's official [Swift](https://www.swift.org/) bindings.

## 👨‍🔧 Installation

We support integration via the [Swift Package Manager](https://www.swift.org/package-manager/) and via [CocoaPods](https://cocoapods.org/).

### Swift Package Manager

#### Installation via Xcode

Via `File > Add Packages...`, add

```
https://github.com/breez/breez-liquid-sdk-swift.git
```

as a package dependency in Xcode.

#### Installation via Swift Package Manifest

Add the following to the dependencies array of your `Package.swift`:

``` swift
.package(url: "https://github.com/breez/breez-liquid-sdk-swift.git", from: "0.0.1"),
```

### CocoaPods

Add the Breez Liquid SDK to your `Podfile` like so:

``` ruby
target '<YourApp' do
  use_frameworks!

  pod 'BreezLiquidSDK'
end
```

## 📄 Usage

``` swift
import BreezLiquidSDK
```
