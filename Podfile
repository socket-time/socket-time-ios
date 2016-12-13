# Uncomment this line to define a global platform for your project
# platform :ios, '9.0'

target 'SocketTime' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for SocketTime

  pod 'Firebase/Database'
  pod 'RxSwift',                  '~> 3.0.1'
  pod 'RxCocoa',                  '~> 3.0.1'
  pod 'SwiftyJSON',               '~> 3.1.3'
  pod 'SnapKit',                  '~> 3.0.2'
  
  target 'SocketTimeTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'SocketTimeUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
            config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'NO'
        end
    end
end
