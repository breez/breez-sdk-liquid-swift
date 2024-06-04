Pod::Spec.new do |spec|
  spec.name                   = "breez_liquid_sdkFFI"
  spec.version                = "0.0.1-dev7"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Low-level bindings to the Breez Liquid SDK Rust API"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc.breez.technology"
  spec.source                 = { :http => "https://github.com/breez/breez-liquid-sdk-swift/releases/download/#{spec.version}/breez_liquid_sdkFFI.xcframework.zip" }
  spec.ios.deployment_target  = "11.0"
  spec.vendored_frameworks    = "breez_liquid_sdkFFI.xcframework"
end
