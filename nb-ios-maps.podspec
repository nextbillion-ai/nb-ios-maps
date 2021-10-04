
Pod::Spec.new do |spec|



  spec.name         = "nb-ios-maps"
  spec.version      = "0.0.3"
  spec.summary      = "iOS Maps SDK by Nextbillion AI."

  spec.description  = <<-DESC
  iOS Maps SDK, Directions, DistanceMatrix and Matching APIs that provided by Nextbillion AI, 
                   DESC

   spec.homepage     = "https://github.com/nextbillion-ai/nb-ios-maps"
 

  spec.license      = ":git => 'https://github.com/nextbillion-ai/nb-ios-maps/blob/main/LICENSE'"

  spec.author             = { "Dan" => "dan@nextbillion.ai" }
  # Or just: spec.author    = "Dan"
  # spec.authors            = { "Dan" => "dan@nextbillion.ai" }

  spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  spec.ios.deployment_target = "9.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.source       = { :git => "https://github.com/nextbillion-ai/nb-ios-maps.git", :tag => "#{spec.version}" }

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  # ――― Dynamic Framework ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  spec.vendored_frameworks = "Nbmap.framework"

end