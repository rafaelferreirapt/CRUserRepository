webtalk_init -webtalk_dir /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula11/ex2/ex2.sdk/webtalk
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Sat May 14 12:11:53 2016" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "SDK v2016.1" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "2016.1" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "amd64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "SDK" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "false" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "NA" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "o4gtom0pd4tovde3d7k6l76u85" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "2016.1_9" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "9" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "" -context "user_environment"
webtalk_add_data -client project -key os_release -value "" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "" -context "user_environment"
webtalk_register_client -client sdk
webtalk_add_data -client sdk -key uid -value "1463252928000" -context "sdk\\\\hardware/1463252928000"
webtalk_add_data -client sdk -key isZynq -value "false" -context "sdk\\\\hardware/1463252928000"
webtalk_add_data -client sdk -key Processors -value "1" -context "sdk\\\\hardware/1463252928000"
webtalk_add_data -client sdk -key VivadoVersion -value "2016.1" -context "sdk\\\\hardware/1463252928000"
webtalk_add_data -client sdk -key Arch -value "artix7" -context "sdk\\\\hardware/1463252928000"
webtalk_add_data -client sdk -key Device -value "7a100t" -context "sdk\\\\hardware/1463252928000"
webtalk_add_data -client sdk -key IsHandoff -value "true" -context "sdk\\\\hardware/1463252928000"
webtalk_transmit -clientid 933987277 -regid "" -xml /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula11/ex2/ex2.sdk/webtalk/usage_statistics_ext_sdk.xml -html /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula11/ex2/ex2.sdk/webtalk/usage_statistics_ext_sdk.html -wdm /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula11/ex2/ex2.sdk/webtalk/sdk_webtalk.wdm -intro "<H3>SDK Usage Report</H3><BR>"
webtalk_terminate
