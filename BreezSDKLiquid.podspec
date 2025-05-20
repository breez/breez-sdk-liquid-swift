Pod::Spec.new do |spec|
  spec.name                   = "BreezSDKLiquid"
  spec.version                = "0.9.0"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Swift bindings to the Breez Liquid SDK"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc.breez.technology"
  spec.source                 = { :git => 'https://github.com/breez/breez-sdk-liquid-swift.git', :tag => spec.version }
  spec.ios.deployment_target  = "13.0"
  spec.source_files           = [
    "Sources/BreezSDKLiquid/*.swift", 
    "Sources/BreezSDKLiquid/**/*.swift"
  ]
  spec.static_framework       = true

  spec.dependency "breez_sdk_liquidFFI", "= #{spec.version}"
end
