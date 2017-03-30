Pod::Spec.new do |s|
  s.name     = 'SwiftyVersion'
  s.version  = '0.2.1'
  s.license  = 'MIT'
  s.summary  = 'A simple object to manage Versions in Swift.'
  s.homepage = 'https://github.com/dcordero/Version'
  s.social_media_url = 'https://twitter.com/dcordero'
  s.authors  = {'David Cordero' => 'david@corderoramirez.es'}
  s.source   = { :git => 'https://github.com/dcordero/SwiftyVersion.git', :tag => '0.2.1' }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Sources/Version.swift'
end
