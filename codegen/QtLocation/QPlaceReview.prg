%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPlaceContent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QDateTime>

$prototype=QPlaceReview()
$constructor=5,4,0|new|

$deleteMethod=5,4,0

$prototype=QDateTime dateTime() const
$method=5,4,0|QDateTime|dateTime|

$prototype=void setDateTime(const QDateTime &dt)
$method=5,4,0|void|setDateTime|const QDateTime &

$prototype=QString text() const
$method=5,4,0|QString|text|

$prototype=void setText(const QString &text)
$method=5,4,0|void|setText|const QString &

$prototype=QString language() const
$method=5,4,0|QString|language|

$prototype=void setLanguage(const QString &data)
$method=5,4,0|void|setLanguage|const QString &

$prototype=qreal rating() const
$method=5,4,0|qreal|rating|

$prototype=void setRating(qreal data)
$method=5,4,0|void|setRating|qreal

$prototype=QString reviewId() const
$method=5,4,0|QString|reviewId|

$prototype=void setReviewId(const QString &identifier)
$method=5,4,0|void|setReviewId|const QString &

$prototype=QString title() const
$method=5,4,0|QString|title|

$prototype=void setTitle(const QString &data)
$method=5,4,0|void|setTitle|const QString &

#pragma ENDDUMP
