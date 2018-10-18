%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

/*
enum class QVirtualKeyboardSelectionListModel::Type
*/
#define QVirtualKeyboardSelectionListModel_WordCandidateList         0

/*
enum class QVirtualKeyboardSelectionListModel::Role
*/
#define QVirtualKeyboardSelectionListModel_Display                   Qt_DisplayRole
#define QVirtualKeyboardSelectionListModel_DisplayRole               QVirtualKeyboardSelectionListModel_Display
#define QVirtualKeyboardSelectionListModel_WordCompletionLength      Qt_UserRole + 1
#define QVirtualKeyboardSelectionListModel_WordCompletionLengthRole  WordCompletionLength
#define QVirtualKeyboardSelectionListModel_Dictionary                QVirtualKeyboardSelectionListModel_WordCompletionLengthRole + 1
#define QVirtualKeyboardSelectionListModel_CanRemoveSuggestion       QVirtualKeyboardSelectionListModel_WordCompletionLengthRole + 2

/*
enum class QVirtualKeyboardSelectionListModel::DictionaryType
*/
#define QVirtualKeyboardSelectionListModel_Default                   0
#define QVirtualKeyboardSelectionListModel_User                      1
