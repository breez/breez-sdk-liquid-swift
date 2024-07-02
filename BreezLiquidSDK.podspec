Pod::Spec.new do |spec|
  spec.name                   = "BreezLiquidSDK"
  spec.version                = "0.1.2-dev1"
  spec.license                = { :type => "MIT" }
  spec.summary                = "Swift bindings to the Breez Liquid SDK"
  spec.homepage               = "https://breez.technology"
  spec.authors                = { "Breez" => "contact@breez.technology" }
  spec.documentation_url      = "https://sdk-doc.breez.technology"
  spec.source                 = { :git => 'https://github.com/breez/breez-liquid-sdk-swift.git', :tag => spec.version }
  spec.ios.deployment_target  = "11.0"
  spec.source_files           = [
    "Sources/BreezLiquidSDK/*.swift", 
    "Sources/BreezLiquidSDK/**/*.swift"
  ]
  spec.static_framework       = true

  spec.dependency "breez_liquid_sdkFFI", "= #{spec.version}"
end
