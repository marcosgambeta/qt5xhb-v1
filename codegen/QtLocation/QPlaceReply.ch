%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

/*
enum QPlaceReply::Error
*/
#define QPlaceReply_NoError                                          0
#define QPlaceReply_PlaceDoesNotExistError                           1
#define QPlaceReply_CategoryDoesNotExistError                        2
#define QPlaceReply_CommunicationError                               3
#define QPlaceReply_ParseError                                       4
#define QPlaceReply_PermissionsError                                 5
#define QPlaceReply_UnsupportedError                                 6
#define QPlaceReply_BadArgumentError                                 7
#define QPlaceReply_CancelError                                      8
#define QPlaceReply_UnknownError                                     9

/*
enum QPlaceReply::Type
*/
#define QPlaceReply_Reply                                            0
#define QPlaceReply_DetailsReply                                     1
#define QPlaceReply_SearchReply                                      2
#define QPlaceReply_SearchSuggestionReply                            3
#define QPlaceReply_ContentReply                                     4
#define QPlaceReply_IdReply                                          5
#define QPlaceReply_MatchReply                                       6
