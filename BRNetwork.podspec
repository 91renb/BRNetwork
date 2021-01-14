Pod::Spec.new do |s|
  s.name         = "BRNetwork"  # 框架的名称
  s.version      = "1.2.7"  # 框架的版本号
  s.summary      = "BRNetwork是一个基于AFNetworking和YYCache封装的轻量级网络请求工具" # 框架的简单介绍
  # 框架的详细描述(详细介绍，要比简介长)
  s.description  = <<-DESC
                    BRNetwork是一个基于AFNetworking和YYCache封装的轻量级网络请求工具,支持本地数据缓存. Support the Objective - C language.
                DESC
  s.homepage     = "https://github.com/91renb/BRNetwork"  # 框架的主页
  s.license      = { :type => "MIT", :file => "LICENSE" } # 证书类型

  s.author       = { "任波" => "developer@irenb.com" }  # 作者
  s.social_media_url = 'https://www.irenb.com'  # 社交网址
  
  s.platform     = :ios, '9.0'    # 框架支持的平台和版本
  s.ios.deployment_target = '9.0' # 最低支持的target

  s.source       = { :git => "https://github.com/91renb/BRNetwork.git", :tag => s.version.to_s }  # GitHib下载地址和版本

  #s.source_files  = "BRNetwork/*.{h,m}"    # 本地框架源文件的位置
  #s.resources  = "xx"    # 框架包含的资源包

  s.requires_arc = true   # 框架要求ARC环境下使用
  
#  s.source_files = 'BRNetwork/Core/*.{h,m}', 'BRNetwork/YYCache/*.{h,m}'
#  s.dependency 'AFNetworking'
#  s.library = 'sqlite3'
#  s.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore'
  
  s.default_subspec = 'Core'  # 默认集成的子模块（全部）

  # 核心网络请求库封装（不带缓存库）
  s.subspec 'Core' do |ss|
    ss.source_files = 'BRNetwork/Core/*.{h,m}', 'BRNetwork/YYCache/*.{h,m}'
    ss.dependency 'AFNetworking'
    ss.library = 'sqlite3'
    ss.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore'
  end

  # 缓存库
  s.subspec 'DISABLE_YYCACHE' do |ss|
    ss.source_files = 'BRNetwork/Core/*.{h,m}'
    ss.dependency 'AFNetworking'
  end
 
end
