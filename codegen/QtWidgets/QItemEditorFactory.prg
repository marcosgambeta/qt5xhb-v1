$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QBYTEARRAY
#endif

CLASS QItemEditorFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createEditor
   METHOD valuePropertyName
   METHOD registerEditor
   METHOD defaultFactory
   METHOD setDefaultFactory

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QItemEditorFactory()
*/
$constructor=|new|

$deleteMethod

/*
virtual QWidget *createEditor(int userType, QWidget *parent) const
*/
$method=|QWidget *|createEditor|int,QWidget *

/*
virtual QByteArray valuePropertyName(int userType) const
*/
$method=|QByteArray|valuePropertyName|int

/*
void registerEditor(int userType, QItemEditorCreatorBase *creator)
*/
$method=|void|registerEditor|int,QItemEditorCreatorBase *

/*
static const QItemEditorFactory *defaultFactory()
*/
$staticMethod=|const QItemEditorFactory *|defaultFactory|

/*
static void setDefaultFactory(QItemEditorFactory *factory)
*/
$staticMethod=|void|setDefaultFactory|QItemEditorFactory *

$extraMethods

#pragma ENDDUMP
