$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTBLOCK
REQUEST QTEXTLISTFORMAT
#endif

CLASS QTextList INHERIT QTextBlockGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD count
   METHOD isEmpty
   METHOD item
   METHOD itemNumber
   METHOD itemText
   METHOD removeItem
   METHOD remove
   METHOD add
   METHOD setFormat
   METHOD format

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextList(QTextDocument *doc)
*/
$constructor=|new|QTextDocument *

$deleteMethod

/*
int count() const
*/
$method=|int|count|

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
QTextBlock item(int i) const
*/
$method=|QTextBlock|item|int

/*
int itemNumber(const QTextBlock &) const
*/
$method=|int|itemNumber|const QTextBlock &

/*
QString itemText(const QTextBlock &) const
*/
$method=|QString|itemText|const QTextBlock &

/*
void removeItem(int i)
*/
$method=|void|removeItem|int

/*
void remove(const QTextBlock &)
*/
$method=|void|remove|const QTextBlock &

/*
void add(const QTextBlock &block)
*/
$method=|void|add|const QTextBlock &

/*
void setFormat(const QTextListFormat &format)
*/
$method=|void|setFormat|const QTextListFormat &

/*
QTextListFormat format() const
*/
$method=|QTextListFormat|format|

#pragma ENDDUMP
