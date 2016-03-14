Pod::Spec.new do |s|
  s.name         = "Breadcrumbs"
  s.version      = "0.1.0"
  s.summary      = "Breadcrumbs Framework"

  s.description  = <<-DESC
                Helper framework to add breadcrumb information to splunkmint logs.
		DESC

  s.homepage     = "https://not-working-url"
  s.license      = { type: "Commercial", file: "LICENSE" }
  s.author       = { "Whatever" => "whatever@whatever.com" }
  s.source       = { git: "https://doenst-matter", tag: s.version.to_s }

  s.platform     = :ios, "8.0"
  s.requires_arc = true

  s.source_files = "Breadcrumbs/**/*.{h,m,swift}"
  s.public_header_files = "Breadcrumbs/**/*.h"
  s.dependency "SplunkMint", "~> 4.4.2"
  # Work-around for https://github.com/CocoaPods/CocoaPods/issues/2926
  s.pod_target_xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/SplunkMint',
    'OTHER_LDFLAGS' => '$(inherited) -undefined dynamic_lookup',
    'ENABLE_BITCODE' => 'NO'
  }
end
