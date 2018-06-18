Pod::Spec.new do |s|
  s.name = 'OpenSSL'
  s.version = '1.0.210'
  s.license = { :type => 'OpenSSL (OpenSSL/SSLeay)', :file => 'LICENSE' }
  s.summary = 'binary build of openSSL'
  s.homepage = 'http://www.9folders.com/'
  s.author = 'Nackehon Jung'
  s.social_media_url = 'https://www.facebook.com/9folders'
  
  s.ios.deployment_target = '8.0'
  s.ios.public_header_files = 'opensslIncludes/openssl/*.h'
  s.ios.vendored_libraries = 'lib/**'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => "${PODS_ROOT}/#{s.name}/opensslIncludes/openssl/**" }

  s.source = { :git => "https://github.com/9folders-nakcheon/OpenSSL-iOS-Binary.git", :tag => "#{s.version}" }
  s.source_files = "opensslIncludes/openssl/*.h"
  s.libraries = 'crypto', 'ssl'
  s.requires_arc = false
end