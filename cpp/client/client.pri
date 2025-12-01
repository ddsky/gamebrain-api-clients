QT += network

HEADERS += \
# Models
    $${PWD}/OAIGameNewsItem.h \
    $${PWD}/OAIGameNewsResponse.h \
    $${PWD}/OAIGameResponse.h \
    $${PWD}/OAIGameResponse_offers_inner.h \
    $${PWD}/OAIGameResponse_offers_inner_price.h \
    $${PWD}/OAIGameResponse_official_stores_inner.h \
    $${PWD}/OAIGameResponse_platforms_inner.h \
    $${PWD}/OAIGameResponse_playtime.h \
    $${PWD}/OAIGameResponse_rating.h \
    $${PWD}/OAISearchResponse.h \
    $${PWD}/OAISearchResponse_active_filter_options_inner.h \
    $${PWD}/OAISearchResponse_active_filter_options_inner_values_inner.h \
    $${PWD}/OAISearchResponse_filter_options_inner.h \
    $${PWD}/OAISearchResponse_filter_options_inner_values_inner.h \
    $${PWD}/OAISearchResponse_results_inner.h \
    $${PWD}/OAISearchResponse_results_inner_rating.h \
    $${PWD}/OAISearchResponse_sorting.h \
    $${PWD}/OAISearchResponse_sorting_options_inner.h \
    $${PWD}/OAISearchSuggestionResponse.h \
    $${PWD}/OAISearchSuggestionResponse_results_inner.h \
    $${PWD}/OAISimilarGamesResponse.h \
# APIs
    $${PWD}/OAIDefaultApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIEnum.h \
    $${PWD}/OAIHttpFileElement.h \
    $${PWD}/OAIServerConfiguration.h \
    $${PWD}/OAIServerVariable.h \
    $${PWD}/OAIOauth.h

SOURCES += \
# Models
    $${PWD}/OAIGameNewsItem.cpp \
    $${PWD}/OAIGameNewsResponse.cpp \
    $${PWD}/OAIGameResponse.cpp \
    $${PWD}/OAIGameResponse_offers_inner.cpp \
    $${PWD}/OAIGameResponse_offers_inner_price.cpp \
    $${PWD}/OAIGameResponse_official_stores_inner.cpp \
    $${PWD}/OAIGameResponse_platforms_inner.cpp \
    $${PWD}/OAIGameResponse_playtime.cpp \
    $${PWD}/OAIGameResponse_rating.cpp \
    $${PWD}/OAISearchResponse.cpp \
    $${PWD}/OAISearchResponse_active_filter_options_inner.cpp \
    $${PWD}/OAISearchResponse_active_filter_options_inner_values_inner.cpp \
    $${PWD}/OAISearchResponse_filter_options_inner.cpp \
    $${PWD}/OAISearchResponse_filter_options_inner_values_inner.cpp \
    $${PWD}/OAISearchResponse_results_inner.cpp \
    $${PWD}/OAISearchResponse_results_inner_rating.cpp \
    $${PWD}/OAISearchResponse_sorting.cpp \
    $${PWD}/OAISearchResponse_sorting_options_inner.cpp \
    $${PWD}/OAISearchSuggestionResponse.cpp \
    $${PWD}/OAISearchSuggestionResponse_results_inner.cpp \
    $${PWD}/OAISimilarGamesResponse.cpp \
# APIs
    $${PWD}/OAIDefaultApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp \
    $${PWD}/OAIHttpFileElement.cpp \
    $${PWD}/OAIOauth.cpp
