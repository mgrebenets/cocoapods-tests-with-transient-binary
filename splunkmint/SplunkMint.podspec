Pod::Spec.new do |s|

  s.platform     = :ios, "7.0"
  s.name         = "SplunkMint"
  s.version      = "4.4.2"
  s.summary      = "Usage, performance and crash monitoring for your iOS apps"
  s.description  = <<-DESC
                   Usage, performance and crash monitoring for your iOS apps.
                   DESC
  s.homepage     = "https://mint.splunk.com"
  s.license      = {:type => "Commercial", :text => "See https://mint.splunk.com/termsofuse"}
  s.author       = "Splunk"
  s.source       = { :git => "https://not-working-url.git", :tag => s.version }

  s.frameworks = "SystemConfiguration", "CoreTelephony", "WebKit", "UIKit", "QuartzCore"
  s.libraries = "z"
  s.requires_arc = true

  s.default_subspec = "StaticFramework"

  s.prepare_command = "touch Empty.m && cp SplunkMint.framework/SplunkMint libSplunkMint.a && cp SplunkMint.framework/Headers/* ."

  s.subspec "StaticFramework" do |ss|
    ss.public_header_files = "SplunkMint.framework/Versions/A/Headers/*.h"
    ss.preserve_paths = "SplunkMint.framework"
    ss.vendored_frameworks = "SplunkMint.framework"
  end

  s.subspec "StaticLibrary" do |ss|
    ss.preserve_paths = "SplunkMint.framework/SplunkMint"
    ss.source_files = "Empty.m", "*.h"
    ss.public_header_files = "*.h"
    ss.vendored_libraries = "libSplunkMint.a"
    ss.pod_target_xcconfig = {
      "OTHER_LDFLAGS" => "$(inherited) -ObjC"
    }
  end
end
