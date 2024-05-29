# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/opt/esp/idf/components/bootloader/subproject"
  "/workspaces/examples/uart_echo/build/bootloader"
  "/workspaces/examples/uart_echo/build/bootloader-prefix"
  "/workspaces/examples/uart_echo/build/bootloader-prefix/tmp"
  "/workspaces/examples/uart_echo/build/bootloader-prefix/src/bootloader-stamp"
  "/workspaces/examples/uart_echo/build/bootloader-prefix/src"
  "/workspaces/examples/uart_echo/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/workspaces/examples/uart_echo/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/workspaces/examples/uart_echo/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
