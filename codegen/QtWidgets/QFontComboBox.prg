$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QSIZE
#endif

CLASS QFontComboBox INHERIT QComboBox

   METHOD new
   METHOD delete
   METHOD currentFont
   METHOD fontFilters
   METHOD setFontFilters
   METHOD setWritingSystem
   METHOD writingSystem
   METHOD sizeHint
   METHOD setCurrentFont

   METHOD onCurrentFontChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QFontComboBox ( QWidget * parent = 0 )
*/
$constructor=|new|QWidget *=0

$deleteMethod

/*
QFont currentFont () const
*/
$method=|QFont|currentFont|

/*
FontFilters fontFilters () const
*/
$method=|QFontComboBox::FontFilters|fontFilters|

/*
void setFontFilters ( FontFilters filters )
*/
$method=|void|setFontFilters|QFontComboBox::FontFilters

/*
void setWritingSystem ( QFontDatabase::WritingSystem script )
*/
$method=|void|setWritingSystem|QFontDatabase::WritingSystem

/*
QFontDatabase::WritingSystem writingSystem () const
*/
$method=|QFontDatabase::WritingSystem|writingSystem|

/*
virtual QSize sizeHint () const
*/
$method=|QSize|sizeHint|

/*
void setCurrentFont ( const QFont & font )
*/
$method=|void|setCurrentFont|const QFont &

#pragma ENDDUMP
