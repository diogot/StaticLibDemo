def xcodebuild(sdk, archs, iphoneos_deployment_target, products_dir)
  sh "xcodebuild -project 'StaticLibDemo.xcodeproj' -configuration 'Release' -sdk '#{sdk}' clean build ARCHS='#{archs}' VALID_ARCHS='#{archs}' IPHONEOS_DEPLOYMENT_TARGET='#{iphoneos_deployment_target}' TARGET_BUILD_DIR='#{products_dir}' BUILT_PRODUCTS_DIR='#{products_dir}'"
end

desc "Build arm"
task :build_arm do
  xcodebuild('iphoneos7.0', 'armv7 armv7s', '5.0', 'build-arm')
end

desc "Build arm64"
task :build_arm64 do
  xcodebuild('iphoneos7.0', 'arm64', '7.0', 'build-arm64')
end

desc "Build i386"
task :build_i386 do
  xcodebuild('iphonesimulator7.0', 'i386', '5.0', 'build-i386')
end

desc "Build x86_64"
task :build_x86_64 do
  xcodebuild('iphonesimulator7.0', 'x86_64', '7.0', 'build-x86_64')
end

desc "Build fat"
task :build_fat => [:build_arm, :build_arm64, :build_i386, :build_x86_64] do
  sh "lipo -create ./build-arm/libStaticLibDemo.a ./build-arm64/libStaticLibDemo.a ./build-i386/libStaticLibDemo.a ./build-x86_64/libStaticLibDemo.a -output libStaticLibDemo.a"
end

desc "Clean"
task :clean do
  sh 'rm -rf build*'
end

desc "Clean binary"
task :distclean => [:clean] do
  sh 'rm -rf libStaticLibDemo.a'
end

task :default => [:distclean, :build_fat]