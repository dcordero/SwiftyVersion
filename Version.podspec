Pod::Spec.new do |s|
  s.name     = 'Version'
  s.version  = '0.1.0'
  s.license  = 'MIT'
  s.summary  = 'A simple object to manage Versions in Swift.'
  s.homepage = 'https://github.com/dcordero/Version'
  s.social_media_url = 'https://twitter.com/dcordero'
  s.authors  = {'David Cordero' => 'david@corderoramirez.es'}
  s.source   = { :git => 'https://github.com/dcordero/Version.git', :tag => '0.1.0' }
  s.source_files = 'Version/Version.swift'
end
