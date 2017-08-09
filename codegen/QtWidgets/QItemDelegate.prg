$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QITEMEDITORFACTORY
#endif

CLASS QItemDelegate INHERIT QAbstractItemDelegate

   METHOD new
   METHOD delete
   METHOD hasClipping
   METHOD itemEditorFactory
   METHOD setClipping
   METHOD setItemEditorFactory

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QItemDelegate ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
bool hasClipping () const
*/
$method=|bool|hasClipping|

/*
QItemEditorFactory * itemEditorFactory () const
*/
$method=|QItemEditorFactory *|itemEditorFactory|

/*
void setClipping ( bool clip )
*/
$method=|void|setClipping|bool

/*
void setItemEditorFactory ( QItemEditorFactory * factory )
*/
$method=|void|setItemEditorFactory|QItemEditorFactory *

#pragma ENDDUMP
