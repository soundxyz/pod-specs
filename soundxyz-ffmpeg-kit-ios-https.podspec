require "json"

Pod::Spec.new do |s|
  s.name         = "soundxyz-ffmpeg-kit-ios-https"
  s.version      = "6.0.2"
  s.summary      = "FFmpeg Kit iOS Https Shared Framework"
  s.description  = "Includes FFmpeg with gmp and gnutls libraries enabled."
  s.homepage     = "https://github.com/soundxyz/pod-specs"
  s.license      = { :type => "LGPL-3.0", :file => "Frameworks/ffmpegkit.xcframework/ios-arm64/ffmpegkit.framework/LICENSE" }
  s.authors      = "SoundXYZ"

  s.platform          = :ios
  s.ios.deployment_target = "12.1"
  s.requires_arc      = true
  s.static_framework  = true

  s.source       = { :http => "https://github.com/soundxyz/pod-specs.git" }


  s.libraries = [
    "z",
    "bz2",
    "c++",
    "iconv"
  ]

  s.frameworks = [
    "AudioToolbox",
    "AVFoundation",
    "CoreMedia",
    "VideoToolbox"
  ]
  s.ios.vendored_frameworks = [
    "Frameworks/ffmpegkit.xcframework",
    "Frameworks/libavcodec.xcframework",
    "Frameworks/libavdevice.xcframework",
    "Frameworks/libavfilter.xcframework",
    "Frameworks/libavformat.xcframework",
    "Frameworks/libavutil.xcframework",
    "Frameworks/libswresample.xcframework",
    "Frameworks/libswscale.xcframework",
  ]
end
