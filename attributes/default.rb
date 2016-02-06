####
default['vsts']['pool'] = 'ubuntu'
####
default['nodejs']['version'] = '4.2.3'
default['nodejs']['source']['checksum'] = nil
default['nodejs']['binary']['checksum']['linux_x64'] = nil
default['nodejs']['binary']['checksum']['linux_x86'] = nil
default['nodejs']['install_method'] = 'binary'

default['java']['jdk_version'] = '8'

default['android-sdk']['components'] = %w(  platform-tools
                                            build-tools-23.0.1
                                            android-23
                                            sys-img-armeabi-v7a-android-23
                                            android-22
                                            sys-img-armeabi-v7a-android-22
                                            android-21
                                            sys-img-armeabi-v7a-android-21
                                            extra-android-support
                                            extra-google-google_play_services
                                            extra-google-m2repository
                                            extra-android-m2repository  )
