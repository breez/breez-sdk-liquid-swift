Pod::Spec.new do |spec|
  spec.name                   = "breez_sdk_liquidFFI"
  spec.version                = "0.1.2-dev6"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Low-level bindings to the Breez Liquid SDK Rust API"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc.breez.technology"
  spec.source                 = { :http => "https://github.com/breez/breez-sdk-liquid-swift/releases/download/#{spec.version}/breez_sdk_liquidFFI.xcframework.zip" }
  spec.ios.deployment_target  = "13.0"
  spec.vendored_frameworks    = "breez_sdk_liquidFFI.xcframework"
end
