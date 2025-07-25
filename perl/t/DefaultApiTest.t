=begin comment

GameBrain API

GameBrain API

The version of the OpenAPI document: 1.0.1
Contact: mail@gamebrain.co
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::DefaultApi');

my $api = WWW::OpenAPIClient::DefaultApi->new();
isa_ok($api, 'WWW::OpenAPIClient::DefaultApi');

#
# detail test
#
# uncomment below and update the test
#my $detail_id = undef; # replace NULL with a proper value
#my $detail_api_key = undef; # replace NULL with a proper value
#my $detail_result = $api->detail(id => $detail_id, api_key => $detail_api_key);

#
# search test
#
# uncomment below and update the test
#my $search_query = undef; # replace NULL with a proper value
#my $search_offset = undef; # replace NULL with a proper value
#my $search_limit = undef; # replace NULL with a proper value
#my $search_filters = undef; # replace NULL with a proper value
#my $search_sort = undef; # replace NULL with a proper value
#my $search_sort_order = undef; # replace NULL with a proper value
#my $search_generate_filter_options = undef; # replace NULL with a proper value
#my $search_api_key = undef; # replace NULL with a proper value
#my $search_result = $api->search(query => $search_query, offset => $search_offset, limit => $search_limit, filters => $search_filters, sort => $search_sort, sort_order => $search_sort_order, generate_filter_options => $search_generate_filter_options, api_key => $search_api_key);

#
# similar test
#
# uncomment below and update the test
#my $similar_id = undef; # replace NULL with a proper value
#my $similar_limit = undef; # replace NULL with a proper value
#my $similar_api_key = undef; # replace NULL with a proper value
#my $similar_result = $api->similar(id => $similar_id, limit => $similar_limit, api_key => $similar_api_key);

#
# suggest test
#
# uncomment below and update the test
#my $suggest_query = undef; # replace NULL with a proper value
#my $suggest_limit = undef; # replace NULL with a proper value
#my $suggest_api_key = undef; # replace NULL with a proper value
#my $suggest_result = $api->suggest(query => $suggest_query, limit => $suggest_limit, api_key => $suggest_api_key);


done_testing();
