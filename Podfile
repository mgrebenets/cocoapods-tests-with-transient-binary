platform :ios, "8.0"

use_frameworks!
inhibit_all_warnings!

target "Breadcrumbs" do
    pod "SplunkMint", path: "splunkmint"

    target "BreadcrumbsTests" do
        inherit! :search_paths
        # Uncomment next line and update pods to "fix" the issue
#        pod "SplunkMint", path: "splunkmint"
    end
end

#target "BreadcrumbsTests" do
#    # Uncomment next line and update pods to "fix" the issue
#    #        pod "SplunkMint", path: "splunkmint"
#end


post_install do |installer|
    # Disable bitcode for now. Specifically needed for HockeySDK and ARAnalytics.
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
    end

    # CI was having trouble shipping signed builds
    # https://github.com/CocoaPods/CocoaPods/issues/4011
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['EXPANDED_CODE_SIGN_IDENTITY'] = ""
            config.build_settings['CODE_SIGNING_REQUIRED'] = "NO"
            config.build_settings['CODE_SIGNING_ALLOWED'] = "NO"
        end
    end
end

