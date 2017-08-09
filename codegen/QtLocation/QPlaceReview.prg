$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
#endif

CLASS QPlaceReview INHERIT QPlaceContent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD dateTime
   METHOD setDateTime
   METHOD text
   METHOD setText
   METHOD language
   METHOD setLanguage
   METHOD rating
   METHOD setRating
   METHOD reviewId
   METHOD setReviewId
   METHOD title
   METHOD setTitle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QDateTime>

/*
QPlaceReview()
*/
$constructor=5,4,0|new|

$deleteMethod=5,4,0

/*
QDateTime dateTime() const
*/
$method=5,4,0|QDateTime|dateTime|

/*
void setDateTime(const QDateTime &dt)
*/
$method=5,4,0|void|setDateTime|const QDateTime &

/*
QString text() const
*/
$method=5,4,0|QString|text|

/*
void setText(const QString &text)
*/
$method=5,4,0|void|setText|const QString &

/*
QString language() const
*/
$method=5,4,0|QString|language|

/*
void setLanguage(const QString &data)
*/
$method=5,4,0|void|setLanguage|const QString &

/*
qreal rating() const
*/
$method=5,4,0|qreal|rating|

/*
void setRating(qreal data)
*/
$method=5,4,0|void|setRating|qreal

/*
QString reviewId() const
*/
$method=5,4,0|QString|reviewId|

/*
void setReviewId(const QString &identifier)
*/
$method=5,4,0|void|setReviewId|const QString &

/*
QString title() const
*/
$method=5,4,0|QString|title|

/*
void setTitle(const QString &data)
*/
$method=5,4,0|void|setTitle|const QString &

#pragma ENDDUMP
