cmake_minimum_required(VERSION 3.5)

project(gamebrain)

set(CMAKE_AUTOMOC ON)

find_package(QT NAMES Qt6 Qt5 REQUIRED COMPONENTS Core Network Gui)
find_package(Qt${QT_VERSION_MAJOR} REQUIRED COMPONENTS Core Network Gui)

include(GNUInstallDirs)
include(CMakePackageConfigHelpers)

add_library(${PROJECT_NAME}
  OAIGameNewsItem.h
  OAIGameNewsResponse.h
  OAIGameResponse.h
  OAIGameResponse_offers_inner.h
  OAIGameResponse_offers_inner_price.h
  OAIGameResponse_official_stores_inner.h
  OAIGameResponse_platforms_inner.h
  OAIGameResponse_playtime.h
  OAIGameResponse_rating.h
  OAISearchResponse.h
  OAISearchResponse_active_filter_options_inner.h
  OAISearchResponse_active_filter_options_inner_values_inner.h
  OAISearchResponse_filter_options_inner.h
  OAISearchResponse_filter_options_inner_values_inner.h
  OAISearchResponse_results_inner.h
  OAISearchResponse_results_inner_rating.h
  OAISearchResponse_sorting.h
  OAISearchResponse_sorting_options_inner.h
  OAISearchSuggestionResponse.h
  OAISearchSuggestionResponse_results_inner.h
  OAISimilarGamesResponse.h
  OAIDefaultApi.h
  OAIHelpers.h
  OAIHttpRequest.h
  OAIObject.h
  OAIEnum.h
  OAIHttpFileElement.h
  OAIServerConfiguration.h
  OAIServerVariable.h
  OAIOauth.h
  OAIGameNewsItem.cpp
  OAIGameNewsResponse.cpp
  OAIGameResponse.cpp
  OAIGameResponse_offers_inner.cpp
  OAIGameResponse_offers_inner_price.cpp
  OAIGameResponse_official_stores_inner.cpp
  OAIGameResponse_platforms_inner.cpp
  OAIGameResponse_playtime.cpp
  OAIGameResponse_rating.cpp
  OAISearchResponse.cpp
  OAISearchResponse_active_filter_options_inner.cpp
  OAISearchResponse_active_filter_options_inner_values_inner.cpp
  OAISearchResponse_filter_options_inner.cpp
  OAISearchResponse_filter_options_inner_values_inner.cpp
  OAISearchResponse_results_inner.cpp
  OAISearchResponse_results_inner_rating.cpp
  OAISearchResponse_sorting.cpp
  OAISearchResponse_sorting_options_inner.cpp
  OAISearchSuggestionResponse.cpp
  OAISearchSuggestionResponse_results_inner.cpp
  OAISimilarGamesResponse.cpp
  OAIDefaultApi.cpp
  OAIHelpers.cpp
  OAIHttpRequest.cpp
  OAIHttpFileElement.cpp
  OAIOauth.cpp
  )

target_include_directories(${PROJECT_NAME}
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
        $<INSTALL_INTERFACE:${CMAKE_INSTALL_INCLUDEDIR}>
)

target_link_libraries(${PROJECT_NAME}
    PUBLIC
        Qt${QT_VERSION_MAJOR}::Core
        Qt${QT_VERSION_MAJOR}::Network
        Qt${QT_VERSION_MAJOR}::Gui

)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
    "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    INSTALL_DESTINATION "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}"
)

install(
    TARGETS ${PROJECT_NAME}
    EXPORT ${PROJECT_NAME}Targets
    LIBRARY DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    ARCHIVE DESTINATION "${CMAKE_INSTALL_LIBDIR}"
    RUNTIME DESTINATION "${CMAKE_INSTALL_BINDIR}"
    INCLUDES DESTINATION "${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}"
)

install(
    FILES ${HEADER_FILES}
    DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${PROJECT_NAME}
)

install(
    FILES "${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)

install(
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}
)
