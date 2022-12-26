build:
	catkin build --cmake-args -DCMAKE_EXPORT_COMPILE_COMMANDS=ON alome_velodyne

format:
	find src -regex '.*\.\(cpp\|h\|hpp\|cc\|cxx\)' -exec clang-format -style=file -i {} \;
	find include -regex '.*\.\(cpp\|h\|hpp\|cc\|cxx\)' -exec clang-format -style=file -i {} \;
	find utils -regex '.*\.\(cpp\|h\|hpp\|cc\|cxx\)' -exec clang-format -style=file -i {} \;
	#find fuzz_test -regex '.*\.\(cpp\|h\|hpp\|cc\|cxx\)' -exec clang-format -style=file -i {} \;
	#find configured_files -regex '.*\.\(cpp\|h\|hpp\|cc\|cxx\)' -exec clang-format -style=file -i {} \;
	# find src -regex '.*\.\(cmake\)' -exec cmake-format -c .cmake-format.yaml -i {} \;
	# find test -regex '.*\.\(cmake\)' -exec cmake-format -c .cmake-format.yaml -i {} \;
	# find fuzz_test -regex '.*\.\(cmake\)' -exec cmake-format -c .cmake-format.yaml -i {} \;
	# find configured_files -regex '.*\.\(cmake\)' -exec cmake-format -c .cmake-format.yaml -i {} \;
	# cmake-format -c .cmake-format.yaml -i CMakeLists.txt

link:
	ln -sf $PWD/../../build/alome_velodyne/compile_commands.json .