%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QHELPCONTENTMODEL
REQUEST QHELPCONTENTWIDGET
REQUEST QHELPINDEXMODEL
REQUEST QHELPINDEXWIDGET
REQUEST QHELPSEARCHENGINE
#endif

CLASS QHelpEngine INHERIT QHelpEngineCore

   METHOD new
   METHOD delete
   METHOD contentModel
   METHOD contentWidget
   METHOD indexModel
   METHOD indexWidget
   METHOD searchEngine

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QHelpContentModel>
#include <QHelpIndexModel>
#include <QHelpSearchEngine>

$prototype=QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
$constructor=|new|const QString &,QObject *=0

$deleteMethod

$prototype=QHelpContentModel * contentModel () const
$method=|QHelpContentModel *|contentModel|

$prototype=QHelpContentWidget * contentWidget ()
$method=|QHelpContentWidget *|contentWidget|

$prototype=QHelpIndexModel * indexModel () const
$method=|QHelpIndexModel *|indexModel|

$prototype=QHelpIndexWidget * indexWidget ()
$method=|QHelpIndexWidget *|indexWidget|

$prototype=QHelpSearchEngine * searchEngine ()
$method=|QHelpSearchEngine *|searchEngine|

#pragma ENDDUMP
