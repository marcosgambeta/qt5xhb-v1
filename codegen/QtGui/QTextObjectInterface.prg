$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QTextObjectInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD intrinsicSize
   METHOD drawObject

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

$deleteMethod

/*
virtual QSizeF intrinsicSize(QTextDocument *doc, int posInDocument, const QTextFormat &format) = 0
*/
$virtualMethod=|QSizeF|intrinsicSize|QTextDocument *,int,const QTextFormat &

/*
virtual void drawObject(QPainter *painter, const QRectF &rect, QTextDocument *doc, int posInDocument, const QTextFormat &format) = 0
*/
$virtualMethod=|void|drawObject|QPainter *,const QRectF &,QTextDocument *,int,const QTextFormat &

$extraMethods

#pragma ENDDUMP
