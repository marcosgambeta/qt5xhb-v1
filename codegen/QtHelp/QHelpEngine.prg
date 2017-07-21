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

   DATA self_destruction INIT .F.

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

/*
QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
*/
$constructor=|new|const QString &,QObject *=0

$deleteMethod

/*
QHelpContentModel * contentModel () const
*/
$method=|QHelpContentModel *|contentModel|

/*
QHelpContentWidget * contentWidget ()
*/
$method=|QHelpContentWidget *|contentWidget|

/*
QHelpIndexModel * indexModel () const
*/
$method=|QHelpIndexModel *|indexModel|

/*
QHelpIndexWidget * indexWidget ()
*/
$method=|QHelpIndexWidget *|indexWidget|

/*
QHelpSearchEngine * searchEngine ()
*/
$method=|QHelpSearchEngine *|searchEngine|

#pragma ENDDUMP
