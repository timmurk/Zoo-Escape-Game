# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build"

# Include any dependencies generated for this target.
include CMakeFiles/Zoo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Zoo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Zoo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Zoo.dir/flags.make

CMakeFiles/Zoo.dir/src/main.cpp.o: CMakeFiles/Zoo.dir/flags.make
CMakeFiles/Zoo.dir/src/main.cpp.o: /Users/timurmudarisov/C++\ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/main.cpp
CMakeFiles/Zoo.dir/src/main.cpp.o: CMakeFiles/Zoo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Zoo.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Zoo.dir/src/main.cpp.o -MF CMakeFiles/Zoo.dir/src/main.cpp.o.d -o CMakeFiles/Zoo.dir/src/main.cpp.o -c "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/main.cpp"

CMakeFiles/Zoo.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoo.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/main.cpp" > CMakeFiles/Zoo.dir/src/main.cpp.i

CMakeFiles/Zoo.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoo.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/main.cpp" -o CMakeFiles/Zoo.dir/src/main.cpp.s

CMakeFiles/Zoo.dir/src/game.cpp.o: CMakeFiles/Zoo.dir/flags.make
CMakeFiles/Zoo.dir/src/game.cpp.o: /Users/timurmudarisov/C++\ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/game.cpp
CMakeFiles/Zoo.dir/src/game.cpp.o: CMakeFiles/Zoo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Zoo.dir/src/game.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Zoo.dir/src/game.cpp.o -MF CMakeFiles/Zoo.dir/src/game.cpp.o.d -o CMakeFiles/Zoo.dir/src/game.cpp.o -c "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/game.cpp"

CMakeFiles/Zoo.dir/src/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoo.dir/src/game.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/game.cpp" > CMakeFiles/Zoo.dir/src/game.cpp.i

CMakeFiles/Zoo.dir/src/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoo.dir/src/game.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/game.cpp" -o CMakeFiles/Zoo.dir/src/game.cpp.s

CMakeFiles/Zoo.dir/src/controller.cpp.o: CMakeFiles/Zoo.dir/flags.make
CMakeFiles/Zoo.dir/src/controller.cpp.o: /Users/timurmudarisov/C++\ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/controller.cpp
CMakeFiles/Zoo.dir/src/controller.cpp.o: CMakeFiles/Zoo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Zoo.dir/src/controller.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Zoo.dir/src/controller.cpp.o -MF CMakeFiles/Zoo.dir/src/controller.cpp.o.d -o CMakeFiles/Zoo.dir/src/controller.cpp.o -c "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/controller.cpp"

CMakeFiles/Zoo.dir/src/controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoo.dir/src/controller.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/controller.cpp" > CMakeFiles/Zoo.dir/src/controller.cpp.i

CMakeFiles/Zoo.dir/src/controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoo.dir/src/controller.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/controller.cpp" -o CMakeFiles/Zoo.dir/src/controller.cpp.s

CMakeFiles/Zoo.dir/src/renderer.cpp.o: CMakeFiles/Zoo.dir/flags.make
CMakeFiles/Zoo.dir/src/renderer.cpp.o: /Users/timurmudarisov/C++\ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/renderer.cpp
CMakeFiles/Zoo.dir/src/renderer.cpp.o: CMakeFiles/Zoo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Zoo.dir/src/renderer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Zoo.dir/src/renderer.cpp.o -MF CMakeFiles/Zoo.dir/src/renderer.cpp.o.d -o CMakeFiles/Zoo.dir/src/renderer.cpp.o -c "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/renderer.cpp"

CMakeFiles/Zoo.dir/src/renderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoo.dir/src/renderer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/renderer.cpp" > CMakeFiles/Zoo.dir/src/renderer.cpp.i

CMakeFiles/Zoo.dir/src/renderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoo.dir/src/renderer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/renderer.cpp" -o CMakeFiles/Zoo.dir/src/renderer.cpp.s

CMakeFiles/Zoo.dir/src/player.cpp.o: CMakeFiles/Zoo.dir/flags.make
CMakeFiles/Zoo.dir/src/player.cpp.o: /Users/timurmudarisov/C++\ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/player.cpp
CMakeFiles/Zoo.dir/src/player.cpp.o: CMakeFiles/Zoo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Zoo.dir/src/player.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Zoo.dir/src/player.cpp.o -MF CMakeFiles/Zoo.dir/src/player.cpp.o.d -o CMakeFiles/Zoo.dir/src/player.cpp.o -c "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/player.cpp"

CMakeFiles/Zoo.dir/src/player.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoo.dir/src/player.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/player.cpp" > CMakeFiles/Zoo.dir/src/player.cpp.i

CMakeFiles/Zoo.dir/src/player.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoo.dir/src/player.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/player.cpp" -o CMakeFiles/Zoo.dir/src/player.cpp.s

CMakeFiles/Zoo.dir/src/bullet.cpp.o: CMakeFiles/Zoo.dir/flags.make
CMakeFiles/Zoo.dir/src/bullet.cpp.o: /Users/timurmudarisov/C++\ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/bullet.cpp
CMakeFiles/Zoo.dir/src/bullet.cpp.o: CMakeFiles/Zoo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Zoo.dir/src/bullet.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Zoo.dir/src/bullet.cpp.o -MF CMakeFiles/Zoo.dir/src/bullet.cpp.o.d -o CMakeFiles/Zoo.dir/src/bullet.cpp.o -c "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/bullet.cpp"

CMakeFiles/Zoo.dir/src/bullet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoo.dir/src/bullet.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/bullet.cpp" > CMakeFiles/Zoo.dir/src/bullet.cpp.i

CMakeFiles/Zoo.dir/src/bullet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoo.dir/src/bullet.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/bullet.cpp" -o CMakeFiles/Zoo.dir/src/bullet.cpp.s

CMakeFiles/Zoo.dir/src/animal.cpp.o: CMakeFiles/Zoo.dir/flags.make
CMakeFiles/Zoo.dir/src/animal.cpp.o: /Users/timurmudarisov/C++\ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/animal.cpp
CMakeFiles/Zoo.dir/src/animal.cpp.o: CMakeFiles/Zoo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/Zoo.dir/src/animal.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Zoo.dir/src/animal.cpp.o -MF CMakeFiles/Zoo.dir/src/animal.cpp.o.d -o CMakeFiles/Zoo.dir/src/animal.cpp.o -c "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/animal.cpp"

CMakeFiles/Zoo.dir/src/animal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoo.dir/src/animal.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/animal.cpp" > CMakeFiles/Zoo.dir/src/animal.cpp.i

CMakeFiles/Zoo.dir/src/animal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoo.dir/src/animal.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/animal.cpp" -o CMakeFiles/Zoo.dir/src/animal.cpp.s

CMakeFiles/Zoo.dir/src/objects.cpp.o: CMakeFiles/Zoo.dir/flags.make
CMakeFiles/Zoo.dir/src/objects.cpp.o: /Users/timurmudarisov/C++\ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/objects.cpp
CMakeFiles/Zoo.dir/src/objects.cpp.o: CMakeFiles/Zoo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/Zoo.dir/src/objects.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Zoo.dir/src/objects.cpp.o -MF CMakeFiles/Zoo.dir/src/objects.cpp.o.d -o CMakeFiles/Zoo.dir/src/objects.cpp.o -c "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/objects.cpp"

CMakeFiles/Zoo.dir/src/objects.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Zoo.dir/src/objects.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/objects.cpp" > CMakeFiles/Zoo.dir/src/objects.cpp.i

CMakeFiles/Zoo.dir/src/objects.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Zoo.dir/src/objects.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/src/objects.cpp" -o CMakeFiles/Zoo.dir/src/objects.cpp.s

# Object files for target Zoo
Zoo_OBJECTS = \
"CMakeFiles/Zoo.dir/src/main.cpp.o" \
"CMakeFiles/Zoo.dir/src/game.cpp.o" \
"CMakeFiles/Zoo.dir/src/controller.cpp.o" \
"CMakeFiles/Zoo.dir/src/renderer.cpp.o" \
"CMakeFiles/Zoo.dir/src/player.cpp.o" \
"CMakeFiles/Zoo.dir/src/bullet.cpp.o" \
"CMakeFiles/Zoo.dir/src/animal.cpp.o" \
"CMakeFiles/Zoo.dir/src/objects.cpp.o"

# External object files for target Zoo
Zoo_EXTERNAL_OBJECTS =

Zoo: CMakeFiles/Zoo.dir/src/main.cpp.o
Zoo: CMakeFiles/Zoo.dir/src/game.cpp.o
Zoo: CMakeFiles/Zoo.dir/src/controller.cpp.o
Zoo: CMakeFiles/Zoo.dir/src/renderer.cpp.o
Zoo: CMakeFiles/Zoo.dir/src/player.cpp.o
Zoo: CMakeFiles/Zoo.dir/src/bullet.cpp.o
Zoo: CMakeFiles/Zoo.dir/src/animal.cpp.o
Zoo: CMakeFiles/Zoo.dir/src/objects.cpp.o
Zoo: CMakeFiles/Zoo.dir/build.make
Zoo: /opt/homebrew/Cellar/sdl2/2.28.1/lib/libSDL2.dylib
Zoo: CMakeFiles/Zoo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable Zoo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Zoo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Zoo.dir/build: Zoo
.PHONY : CMakeFiles/Zoo.dir/build

CMakeFiles/Zoo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Zoo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Zoo.dir/clean

CMakeFiles/Zoo.dir/depend:
	cd "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game" "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game" "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build" "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build" "/Users/timurmudarisov/C++ prep/Udacity/CppND-Capstone-Zoo-Escape/Zoo-Escape-Game/build/CMakeFiles/Zoo.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Zoo.dir/depend
